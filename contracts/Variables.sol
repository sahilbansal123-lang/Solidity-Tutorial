// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract StateVariable {
    
    string public myState;
    uint256 public myNum;

    string public defaultText = "Hey Default Test";

    uint256 public defaultNum = 5;

    bytes public defaultByte = "hey Default";
    bytes public defaultBytesNo;

    uint256[] public array;

    constructor(string memory _myState, uint256 _myNum) {
        myState = _myState;
        myNum = _myNum;
    }
}


contract LocalVariable {  
//  Variables that are defined inside the function are called local variable
//  Not going to store on the blockchain
    
    uint256 public myNumber;

    function local() public returns(uint256) {
        uint256 i = 345;
        myNumber = i;
        return myNumber;
    }

}

contract GlobalVariable {
    
    address public owner;

    constructor() {
        owner = msg.sender;
    }
}