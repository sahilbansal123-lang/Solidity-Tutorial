// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Constant {
     
    
    address public constant MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function getConstant() public pure returns(address) {
        return MY_ADDRESS;
    }
}