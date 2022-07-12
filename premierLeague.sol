pragma solidity ^0.5.0;
contract ZPSL{
    
    //TIME
    uint public createTime;
    //counter
    uint public teamCount;

    //declare owner
    address public owner;

    //initialize owner
    constructor() public{
        owner = msg.sender;
        }

    //modifier- only owner can add a team
    modifier onlyOwner() {
        requre(owner == msg.sender);
         _;
    }

    //mapping
    mapping(uint=>Team) public zpslTeams;
   
    //define struct
    struct Team{
        string name;
        string Colors;
        string City;
        string stadium;
       // uint logPosition;
    }
    //add team to the mapping/list/database of zpslteams
    // function calls onlyOwner modifier 
    function addTeam(string memory _name,string memory _Colors,string memory _City, string memory _stadium,uint _logPosition) public onlyOwner {
        //call counter
        ++teamCount;
        //call a zpslteams mapping
       zpslTeams[_logPosition] = Team(_name,_Colors,_City,_stadium);
    }
    function Time() public{
       createTime = now;
    }
}