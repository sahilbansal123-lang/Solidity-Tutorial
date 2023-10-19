// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract NftCount {
    
    uint256 public numberOfNft;

    function checkNumberOFNft() public view returns(uint256) {
        return numberOfNft;
    }

    function addNft() public {
        numberOfNft += 1;
    }

    function deleteNft() public {
        numberOfNft -= 1;
    }
} 