pragma solidity ^0.8.0;
//msg.sender - that is the ethereum address that called the function in the smart contract
//any address can be msg.sender but owner can only be the address that deployed the smart contract and first called the function of a smart contract
//by default when the smart contract is deployed it just sit in blockchain doing nothing and expecting to be called.
// msg.value - gives you the amount of ether tha was sent to the smart contract

contract Msg {

    address  lastSender;
    uint  balance;

     receive() external payable{
        lastSender = msg.sender;
        balance = balance + msg.value;
    }

    function getLastSender() public view returns(address){
        return lastSender;
    }
    function getBalance()public view returns(uint){
        return balance;
    }

}