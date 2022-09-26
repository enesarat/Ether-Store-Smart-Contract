// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract FunctionIntro {
    function Add(uint x,uint y) external pure returns(uint) {
        return x + y;
    }

    function Sub(uint x, uint y) external pure returns(uint) {
        return x - y;
    }
}