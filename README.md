# Card Game Smart Contracts

This repository contains smart contracts for card games, written in Solidity. The contracts are designed to be deployed on the Ethereum blockchain.

## Available Contracts

- `DeckOfCards.sol`: A contract that represents a deck of playing cards, and provides functions for shuffling the deck and drawing cards from it.

## future Contracts
- `Blackjack.sol`: A contract that represents a game of blackjack, and uses the `DeckOfCards` contract to deal cards to the player and dealer.
- `Poker.sol`: implements the rules of various versions of Poker, such as Texas Hold'em and Omaha, and uses the `DeckOfCards` contract to deal cards to the player.

## Requirements

To compile and deploy these contracts, you will need:

- A Solidity compiler (we recommend [Remix](https://remix.ethereum.org/))
- An Ethereum wallet (we recommend [MetaMask](https://metamask.io/))

## Getting Started

To get started with these contracts:

1. Clone this repository.
2. Open `DeckOfCards.sol` in Remix.
3. Compile the contract using the Solidity compiler.
4. Deploy the contract to your local blockchain or the Ethereum mainnet.
5. Interact with the contract using the provided functions.

## Contributing

If you find a bug or want to add a new feature, please create a new issue or pull request. We welcome all contributions!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
