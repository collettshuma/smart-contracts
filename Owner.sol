pragma solidity ^0.8.0;
//msg.sender - that is the ethereum address that called the function in the smart contract
//any address can be msg.sender but owner can only be the address that deployed the smart contract and first called the function of a smart contract
//by default when the smart contract is deployed it just sit in blockchain doing nothing and expecting to be called.

contract Owner {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function setSender() public view returns(address){
        return msg.sender;
    }
}