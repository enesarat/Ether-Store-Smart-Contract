// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Counter {
    uint public count;

    // Function to get the current count
    function getCurrentCounter() public view returns (uint) {
        return count;
    }

    // Increment count by 1
    function incCounter() public {
        count += 1;
    }

    // Decrement count by 1
    function decCounter() public {
        // if count = 0 then function will fail 
        if(count>0)
            count -= 1;

    }
}