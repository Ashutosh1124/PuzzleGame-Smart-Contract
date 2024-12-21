# PuzzleGame Smart Contract

## Project Title
**PuzzleGame Smart Contract**

## Project Description
The PuzzleGame Smart Contract is a decentralized puzzle-solving game built on the Ethereum blockchain. It allows the owner to create puzzles with a question and an answer, and users can participate by submitting their answers. If the answer is correct, the user is rewarded with Ether. The contract keeps track of puzzles, their statuses, and the participants who solve them. It is designed to be transparent, verifiable, and secure using blockchain technology.

## Contract Address
0x168857E6ad4F138e699de299379852E638DA65Dd

## Project Vision
The vision of the PuzzleGame project is to create an interactive and rewarding gaming experience on the blockchain, where users can participate in solving puzzles and earn rewards. The game will be an educational and fun way to explore Ethereum smart contracts, fostering engagement in decentralized finance (DeFi) and blockchain technologies.

## Key Features

1. **Puzzle Creation**: Only the owner (creator) of the contract can create new puzzles with a question and its correct answer.
  
2. **Puzzle Solving**: Players can attempt to solve puzzles by submitting their answers. The puzzle is considered solved only if the answer matches the one stored in the contract.

3. **Rewards**: Upon solving a puzzle correctly, the player is rewarded with Ether. The reward is predefined (1 Ether in this case).

4. **Owner Controls**:
   - **Fund Management**: The contract owner can deposit funds into the contract and withdraw funds at any time.
   - **Puzzle Management**: The contract owner can create and manage puzzles.

5. **Transparency**: All puzzle details (questions, answers, and solver information) are stored on the blockchain, ensuring full transparency.

6. **Security**: The contract ensures that only the owner can create puzzles and deposit/withdraw funds. Only correct answers are rewarded.

---

### Usage
To interact with the PuzzleGame smart contract, you will need:
- An Ethereum wallet like MetaMask.
- Some Ether to interact with the contract, especially to solve puzzles and pay for gas fees.

### Instructions
1. **Create a Puzzle**: The owner can call `createPuzzle` to set a new question and answer for players.
2. **Solve a Puzzle**: Players can call `solvePuzzle` with the puzzle ID and their answer to attempt solving it.
3. **Withdraw Funds**: The owner can withdraw funds from the contract using `withdrawFunds`.

---



