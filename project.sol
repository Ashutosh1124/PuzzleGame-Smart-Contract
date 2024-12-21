// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PuzzleGame {

    address public owner;
    uint public gameCount;

    struct Puzzle {
        uint id;
        string question;
        string answer;
        bool solved;
        address solver;
    }

    mapping(uint => Puzzle) public puzzles;

    event PuzzleCreated(uint puzzleId, string question);
    event PuzzleSolved(uint puzzleId, address solver, uint reward);

    constructor() {
        owner = msg.sender;
        gameCount = 0;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    // Create a new puzzle
    function createPuzzle(string memory _question, string memory _answer) public onlyOwner {
        gameCount++;
        puzzles[gameCount] = Puzzle(gameCount, _question, _answer, false, address(0));
        emit PuzzleCreated(gameCount, _question);
    }

    // Submit an answer to a puzzle
    function solvePuzzle(uint _puzzleId, string memory _answer) public {
        Puzzle storage puzzle = puzzles[_puzzleId];
        require(!puzzle.solved, "Puzzle already solved");
        require(keccak256(abi.encodePacked(puzzle.answer)) == keccak256(abi.encodePacked(_answer)), "Incorrect answer");

        puzzle.solved = true;
        puzzle.solver = msg.sender;
        uint reward = 1 ether;  // For example, rewarding 1 ether for solving the puzzle
        payable(msg.sender).transfer(reward);

        emit PuzzleSolved(_puzzleId, msg.sender, reward);
    }

    // Add funds to the contract (only owner)
    function depositFunds() external payable onlyOwner {}

    // Withdraw funds from the contract (only owner)
    function withdrawFunds(uint _amount) external onlyOwner {
        require(address(this).balance >= _amount, "Insufficient balance");
        payable(owner).transfer(_amount);
    }

    // Get puzzle details by ID
    function getPuzzle(uint _puzzleId) public view returns (string memory, string memory, bool, address) {
        Puzzle memory puzzle = puzzles[_puzzleId];
        return (puzzle.question, puzzle.answer, puzzle.solved, puzzle.solver);
    }
}
