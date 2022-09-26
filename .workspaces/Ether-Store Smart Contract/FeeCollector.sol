// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// Developer: Enes Arat

contract FeeCollector{
    address public accountOwner;
    uint256 public accountBalance;

    constructor(){ // When the contract deployed, constructor is invoked and initializes the contract.
        accountOwner = msg.sender; // Global variable that taken the address of the user which make call.
    }

    receive() payable external {  // For sending the money to the smart contract we prepare the special function which is called "receive".
        accountBalance += msg.value; // A global variable in which we will keep the amount of the sent ether via transaction.
    }

    function withdraw(uint amount, address payable targetAddress) public {  // The function we will use when sending ethereum to an outside address
        require(msg.sender==accountOwner,"You must be the owner of the account to withdraw!"); // We make sure that the person making the transaction for the withdrawal is the account holder.
        require(accountBalance>=amount,"The balance in the account is insufficient for withdrawal!"); // We make sure there is enough balance in the account.
        targetAddress.transfer(amount);
        accountBalance -= amount;
    }
}
