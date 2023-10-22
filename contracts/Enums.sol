// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Enums {
    // enums stand for Enumerable

//  Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Status public status;
    function get() public view returns (Status) {
        return status;
    }

    
}