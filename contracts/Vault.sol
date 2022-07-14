pragma solidity ^0.8.5;

contract VaultContract{
    struct Vault{
        address creator;
        string name;
        address[] users;
        uint256 amount;
    }
    uint256 totalVaults;
    mapping(uint256 => Vault) public vaults;
    mapping(address => uint256) public balance;

    event VaultDistribution(uint256 vaultId,uint256 amount);
     
    function createVault(string memory name, address[] memory users,uint256 initionalAmount)
    public returns(uint256 vaultId){
       Vault storage vault = vaults[totalVaults];

       vault.creator = msg.sender;
       vault.name = name;
       vault.users = users;
       vault.amount = initionalAmount;

       totalVaults += 1;
       return totalVaults -1;
    }
    function addAmount(uint256 vaultId, uint256 amount) public{
        Vault
    }
}