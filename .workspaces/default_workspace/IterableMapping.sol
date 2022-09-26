// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract IterableMapping{
    mapping(address=>uint) public balances;
    mapping(address=>bool) public inserted;
    address[] public keys;

    function set(address _addr,uint _uint) external {
        balances[_addr]=_uint;

        if(!inserted[_addr]){
            inserted[_addr]=true;
            keys.push(_addr);
        }
    }

    function getSize() external view returns(uint){
        return keys.length;
    }

    function first() external view returns(uint){
        return balances[keys[0]];
    }

    function last() external view returns(uint){
        return balances[keys[keys.length-1]];
    }

    function get(uint _uint) external view returns(uint){
        return balances[keys[_uint]];
    }

}