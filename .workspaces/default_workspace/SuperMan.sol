// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Man {
    function sayHello() public pure virtual returns(string memory) {
        return "myBlockChain.com adresi uzerinden kulube uye olabilirsiniz :)";
    }
}

contract SuperMan is Man {
    function sayHello() public pure override returns(string memory) {
        return "Selamlar myBlockChain uyesi, nasilsin ? :)";
    }

    function welcomeMsg(bool isMember) public pure returns(string memory) {
        return isMember ? sayHello() : super.sayHello();
    }
}