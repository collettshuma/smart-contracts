pragma solidity ^0.5.5;

contract LiverpoolFC {

     mapping(uint => Player) public team;
     mapping(address => uint) public balances;

    uint public playerCount;

    address payable owner;
    

    constructor() public{
        owner = msg.sender;
        
    }

    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }

    struct Player{
        string name;
        uint age;
        uint contractDuration;
    }

    function addPlayer(string memory _name, uint _age, uint _contractDuration, uint _id) public onlyOwner {
        ++playerCount;
        team[_id] = Player(_name,_age,_contractDuration);
    }
    function buyPlayer()public payable{
       owner.transfer(msg.value);
    }
}
