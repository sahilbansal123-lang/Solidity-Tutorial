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

contract NestedMapping {
    // Nested Mapping is a concept in which we map Address to another Mapping
    mapping (address => mapping(uint => bool)) public nested;

    function get(address _addr, uint _id) public view returns (bool) {
        // you can get values from a nested mapping
        // even when it is not initialized
        return  nested[_addr][_id];
    }

    function set(address _addr, uint _id, bool _boo ) public {
        nested[_addr][_id] = _boo;
    }

    function remove( address _addr, uint _id) public {
        delete nested[_addr][_id];
    }
}