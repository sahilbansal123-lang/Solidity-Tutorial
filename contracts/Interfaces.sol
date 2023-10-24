// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Interfaces {

    uint public count;

    function increment() external {
        count += 1;
    }
}

interface ICounter {
    
    function count() external view returns (uint);
    
}