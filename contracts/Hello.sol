// SPDX-License-Identifier: MIT


pragma solidity ^0.8.13;

contract MyFirstContract {

    // WAYS TO UPDATE STATE VARIABLE 

    //  WAY 1
    // string public hey = "Hey Sahil";
    // uint256 public no = 5;

    string public hey;
    uint256 public no;

    // WAY 2 -> USE OF CONSTRUCTOR
    // constructor(string memory _hey, uint _no) {
    //     hey = _hey;
    //     no = _no;
    // }

    // WAY 3 USE OF FUNCTION

    function addInfo(string memory _hey, uint _no) public  {
        hey = _hey;
        no = _no;
    }

}