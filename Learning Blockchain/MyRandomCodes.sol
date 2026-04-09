// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Build A smart contract that acts like a bank that stores the users
// FIrst name, Last name, balance, age   <-- Struct
// A function that allows a user to create an account
// A function that allows a User send money and recieve using their wallet address


contract userInfo{
    struct Users{
        string firstName;
        string lastName;
        uint age;
        address Address;
        uint balance;
        bool exists;
    }

    mapping (address => uint) public User;
    

    function createAccount(string memory _firstName, string memory _lastName, uint _age, address _address, bool _exists) public {
        User.push(_firstName, _lastName, _address, _age, _address, _exists == true);
    }

    function getAccount(address _walletAddress) public view returns (string memory, uint){
        return(User[_walletAddress]._firstname, User[_walletAddress]._lastName, User[_walletAddress].age, User[_walletAddress].Address, User[_walletAddress].balance, User[_walletAddress].exists);
    }
}