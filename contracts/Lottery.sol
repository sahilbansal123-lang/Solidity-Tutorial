// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title Ballot
 * @dev Implements voting process along with vote delegation

 
 */
contract Lottery {

    address public manager;
    address payable [] public participants;
    
    constructor() 
    {
        manager = msg.sender; // global variable
    }

    receive() external payable 
    { 
        require(msg.value == 2 ether, "Minimum amount is less than 2 ether");
        participants.push(payable (msg.sender));
    }

    function getBalance() public view returns(uint) 
    {
        require(msg.sender == manager, "You are not the manager");
        return address(this).balance;
    }

    function getRandomAddress() public view returns(uint) 
    {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, participants.length)));
    }

    function selectWinner() public
    {
        require(msg.sender == manager, "Only manager can select random winner");
        require(participants.length >= 3);
        uint r = getRandomAddress();
        address payable winner;
        uint index = r % participants.length;
        winner = participants[index];
        
        winner.transfer(getBalance());
        participants = new address payable [](0); 
    }

    function getBalanceOfAddress(address account) public view returns(uint) 
    {
        return address(account).balance;
    }
}