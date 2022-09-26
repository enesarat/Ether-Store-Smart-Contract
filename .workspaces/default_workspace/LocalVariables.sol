// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract LoaclVariables {
    // State variables are stored on the blockchain.
    uint public i;
    bool public b;
    address public myAddress;


    uint timestamp = block.timestamp; // Current block timestamp
    address sender = msg.sender; // address of the caller
    
    function foo() external {
        // Local variables are not saved to the blockchain.
        uint x = 123;
        bool f = false;

        // some codes here
        x += 456;
        f = true;

        i = 123;
        b = true;
        myAddress = address(1);

        // Here are some global variables
        
    }
}