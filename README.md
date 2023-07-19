# ETH_AVAX_MOD_1
Smart Contract with require(), assert(), and revert()
Introduction
This is a README file that provides an overview and instructions for writing a smart contract that incorporates the require(), assert(), and revert() statements. These statements are commonly used in Ethereum smart contracts to handle conditions and errors effectively.

Definitions

require()
The require() statement is used in smart contracts to validate certain conditions. It ensures that specific conditions must evaluate to true for the function execution to continue. If the condition evaluates to false, the current transaction and all state changes made within the current function are reverted, and an error message is provided. The require() statement is typically used to validate inputs, enforce preconditions, or check for certain constraints within a function. Example usage: require(amount > 0, "Amount must be greater than 0");

assert()
The assert() statement is used to check for internal errors and ensure that internal invariants or conditions hold true. It is typically used to validate assumptions that should never be false unless there is a bug in the contract. If the condition in an assert() statement evaluates to false, it indicates an irrecoverable error, and the current transaction and all state changes are reverted. Unlike the require() statement, the error message provided in assert() is optional. Example usage: assert(from != address(0) && to != address(0));

revert()
The revert() statement is used to explicitly revert transactions and provide an error message. It is often employed when a certain condition is not met or when an exception occurs during contract execution. When the revert() statement is executed, it undoes all the changes made by the transaction and rolls back the state to the previous state. It is typically used to handle exceptional conditions and provide a meaningful error message to the user. Example usage: revert("Failed to send Ether");

