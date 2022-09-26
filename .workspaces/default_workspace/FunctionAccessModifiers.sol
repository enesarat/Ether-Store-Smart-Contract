// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


contract Functions {
    
    //View : Sadece okuma işelmi yapıyorsak ve contract üzerinde bir değişiklik yapmıyorsak "view" modifier'ını ekliyoruz.

    uint public number = 28;

    function add(uint y) public view returns(uint){
        return number + y;
    }

    function addByView(uint a, uint b) public view returns (uint) {
        return a * (b + 5) + block.timestamp;
    }

    //Pure : Contract üzerinden hiçbir değer okumuyor, değerleri dışarıdan alıyorsak ve contact üzerinde bir değişikliğe de yol açmıyorsak "view" yerine "pure" modifier'ını kullanıyoruz.

    function addByPure(uint a, uint b) public pure returns (uint) {
        return a * (b + 5);
     }


}