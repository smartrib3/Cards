pragma solidity ^0.8.0;

contract DeckOfCards {
    
    enum Suit { Hearts, Spades, Diamonds, Clubs }
    enum Value { Ace, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King }
    
    struct Card {
        Suit suit;
        Value value;
    }
    
    Card[] public deck;
    uint256 public seed;
    
    constructor() {
        // Create a new deck of cards
        for (uint8 i = 0; i < 4; i++) {
            for (uint8 j = 0; j < 13; j++) {
                Suit suit = Suit(i);
                Value value = Value(j);
                deck.push(Card(suit, value));
            }
        }
        seed = block.timestamp;
    }
    
    function shuffle() public {
        // Shuffle the deck using the Fisher-Yates algorithm and a random seed
        uint256 n = deck.length;
        while (n > 1) {
            n--;
            uint256 k = uint256(keccak256(abi.encodePacked(seed, n, block.timestamp))) % n;
            Card memory temp = deck[k];
            deck[k] = deck[n];
            deck[n] = temp;
        }
        seed = uint256(keccak256(abi.encodePacked(seed, block.timestamp)));
    }
    
    function getSuitString(Suit _suit) private pure returns (string memory) {
        // Get a string representation of the suit
        if (_suit == Suit.Hearts) {
            return "Hearts";
        } else if (_suit == Suit.Spades) {
            return "Spades";
        } else if (_suit == Suit.Diamonds) {
            return "Diamonds";
        } else {
            return "Clubs";
        }
    }

    function getValueString(Value _value) private pure returns (string memory) {
        // Get a string representation of the value
        if (_value == Value.Ace) {
            return "Ace";
        } else if (_value == Value.Two) {
            return "Two";
        } else if (_value == Value.Three) {
            return "Three";
        } else if (_value == Value.Four) {
            return "Four";
        } else if (_value == Value.Five) {
            return "Five";
        } else if (_value == Value.Six) {
            return "Six";
        } else if (_value == Value.Seven) {
            return "Seven";
        } else if (_value == Value.Eight) {
            return "Eight";
        } else if (_value == Value.Nine) {
            return "Nine";
        } else if (_value == Value.Ten) {
            return "Ten";
        } else if (_value == Value.Jack) {
            return "Jack";
        } else if (_value == Value.Queen) {
            return "Queen";
        } else {
            return "King";
        }
    }
}
