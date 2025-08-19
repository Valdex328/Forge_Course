//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract Wallet {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 amount) external {
        require(msg.sender == owner, "Only the owner can withdraw");
        //require(amount <= address(this).balance, "Insufficient balance");

        owner.transfer(amount);
    }

    function setOwner(address _newOwner) external {
        require(msg.sender == owner, "Only the owner can set a new owner");
        //require(_newOwner != address(0), "New owner cannot be the zero address");

        owner = payable(_newOwner);
    }
}