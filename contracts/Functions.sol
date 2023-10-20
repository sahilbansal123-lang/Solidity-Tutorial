// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//  2 types of Function
//    - Declarative
//    - Non Declarative


contract LearnFunction {
    
    uint256 hey;

//  Get data with the help of function
    function getInfo() public view returns (uint256) {
        return hey;
    }

//  Updaate the data with the help of function
    function updateData(uint256 _hey) public {
        hey = _hey;
    }   

    
}