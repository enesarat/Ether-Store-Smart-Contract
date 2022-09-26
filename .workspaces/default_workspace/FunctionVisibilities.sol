// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Functions {
    
    // Public, External, Internal, Private
    // Public: Bu fonksiyonu hem dışarıdan kullanıcılar çağırabilir hemde kontrat çağırabilir

    function add(uint a, uint b) public pure returns(uint){
        return a + b;
    }

    function add2(uint c, uint d) public pure returns(uint){
        return add(c,d);
    }

    function publicKeyword() public pure returns(string memory) {
        return "Bu bir public keyword fonksiyondur";
    }

    function callPublicKeyword() public pure returns(string memory) {
        return publicKeyword();
    }

    // Private: Bu fonksiyona sadece bu kontrat ulaşabilir. Dışarıdan kimse bu fonksiyona ulaşamaz

    function privateKeyword() private pure returns(string memory) {
        return "Bu bir private keyword fonskiyondur";
    }


    function callPrivateKeyword() public pure returns(string memory) {
        return privateKeyword();
    }

    // Internal: Sadece, fonksiyonun içerisinde bulunduğu kontratı miras alan kontratlar bu fonksiyonu çağırabilirler Dışarıdan başka bir kullanıcı çağıramaz.

    function internalKeyword() internal pure returns(string memory) {
        return "bu bir internal keyword fonskiyondur...";
    }

    function callInternalKeyword() public pure returns(string memory) {
        return internalKeyword();
    }

    // External: Sadece, dışarıdaki kullanıcılar bu fonksiyonu çağırabilir. Kontratın içinde herhangi bir yerde fonksiyon çağırılamaz.

    function externalKeyword() external pure returns(string memory) {
        return "bu bir external keyword fonskiyondur";
    }

    // function callExternalKeyword() public pure returns(string memory) {
    //     return externalKeyword();
    // }
}