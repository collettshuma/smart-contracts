pragma solidity ^0.5.0;

contract CarDealershipRegistry{
    //counter
    uint public numberofCarsRepaired;

   //list of repaired cars
    mapping(uint => Car) public repairedCars;

   //define car properties
    struct Car{
        string name;
        string color;
        string repairDone;
        string carOwner;
        uint millage;
        uint carAge;
     }
      //adding cars to the list
     function addCar(string memory _name, string memory _color, string memory _repairDone,string memory _carOwner, uint _millage,uint _carAge,uint _id) public {
        //calling the counter variable
        ++numberofCarsRepaired;
         repairedCars[_id] = Car(_name,_color,_repairDone,_carOwner,_carAge,_millage);

     }
}