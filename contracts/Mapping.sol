// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mapping {

    mapping (address => uint) public myMap;

    function get(address _addr) public view returns(uint) {
        // MAPPING ALWAYS RETURNS THE VALUE
        // IF THE VALUE WAS NEVER SET THEN IT RETURNS DEFAULT VALURE

        return myMap[_addr];
    }

    function set(address _addr, uint _id) public {
        // update the value at this address
        myMap[_addr] = _id;
    }

    function remove(address _addr) public {
        // reset the value to default
        delete myMap[_addr];
    }

}