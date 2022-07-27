pragma solidity ^0.5.0;
 
 contract FochezMotors{
    //counter
    uint public numberOfVehicles;

    mapping(address => Vehicle) public vehicleForSale;
    mapping(address => uint) public balances;

    address public owner;
    address payable wallet;

    constructor(address payable _wallet) public{
       owner = msg.sender;
       wallet = wallet;
    }
     
     struct Vehicle{
        string name;
        string color;
        uint model;
        uint Vin;
        uint price;
     }

     function addVehicle(string memory _name, string memory _color, uint _model, uint _Vin, uint _price) public {
        vehicleForSale[msg.sender] = Vehicle(_name,_color,_model,_price,_Vin);
        ++numberOfVehicles;
    }
    function buyVehicle() public payable {
       balances[msg.sender] += 5;
       wallet.transfer(msg.value);

    }
 }