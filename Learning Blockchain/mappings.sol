// SPDX-License-Identifier: MIT
pragma solidity  0.8.18;

// Store Numbers by Address
// Create a contract NumberStore

// Requirements:
// Create a mapping: address => uint

// Create a function: setNumber(uint _num)
// It should store _num for the caller only.

// Create another function: getMyNumber()
// It should return the caller’s stored number.
// 💡 Hint: use msg.sender

contract NumberStore{
    mapping(address=>uint) public storeNumber;

    function setNumber(uint _num, address _address) public {
        storeNumber[_address] = _num;
    }
}

// Store Name and Age by Wallet
// Create a contract UserProfiles

// Requirements:
// Create a struct: User { string name; uint age; }
// Create a mapping: address => User

// Function: register(string _name, uint _age)
// Stores the user info for the caller.

// Function: getMyProfile()
// Returns name and age.

contract UserProfiles{
    struct User{
        string name;
        uint age;
        address Address;
        bool exists;
    }

    mapping(address=>User) public users;

    function register(string memory _name, uint _age, bool _exists, address _address) public {
        users[msg.sender] = User(_name, _age, _address, _exists==true);
    }

    function getUser(address _address) public view returns(string memory, uint, bool){
        return (users[_address].name, users[_address].age, users[_address].exists);
    }

    function getMyProfile() public view returns(string memory, address, uint, bool ){
        return (users[msg.sender].name, users[msg.sender].Address, users[msg.sender].age, users[msg.sender].exists);
    }
}


//5. Simple Bank Ledger
// Create contract SimpleBank

// Requirements:

// Mapping: address => uint

// Function: deposit(uint amount)
// Adds amount to caller’s balance

// Function: withdraw(uint amount)
// Subtracts amount from caller’s balance
// ⚠️ Prevent withdrawing more than balance

// Function: getBalance()
// Returns caller’s balance

contract SimpleBank{
    mapping (address => uint) public balances;

    function deposit(uint amount) public {
        balances[msg.sender] = balances[msg.sender] + amount;
    }

    function withdraw(uint amount) public {
        balances[msg.sender] = balances[msg.sender] - amount;
    }

    function getBalance() public view returns(uint256){
        return balances[msg.sender];
    }
}


// 0x246E5A917bd9B4F0B83cC1b89F869c5cFa757Ee0