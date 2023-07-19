// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract siva {
    uint public x;
    address public owner;

    modifier greaterThanZero(uint Value) {
        require(Value > 0, "Value must be greater than zero");
        _;
    }

    modifier lessThanTen(uint Value) {
        assert(Value < 10);
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint NewValue) public greaterThanZero(NewValue) lessThanTen(NewValue) onlyOwner {
        x = NewValue;
    }

    function withdraw() public view onlyOwner {
        bool condition = (x > 5); 
        if (condition) {
            // Perform withdrawal logic
        } else {
            revert("Withdrawal is not allowed in this condition");
        }
    }
}
