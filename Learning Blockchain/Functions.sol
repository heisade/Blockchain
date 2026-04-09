// SPDX-License-Identifier: MIT
pragma solidity  0.8.18;
/**
// 1. Create a contract called Calculator.
// Requirements:
// Create a function getNumber()
// It should return the number 10

contract calculator{
    function getNumber() public pure returns(uint256){
        return 10;
    }
}


// 2. Create a contract called Age
// Requirements:
// Create a function showAge(uint _age)
// The function should return the age passed into it

contract age{
    function showAge(uint input_age) public pure returns(uint256){
        return input_age;
    }
}

// 3. Create a contract called AddNumbers
// Requirements:
// Create a function: add(uint a, uint b)
// It should return: a + b
// Example: add(5,3) → 8

contract addNumbers{
    function add(uint a, uint b) public pure returns(uint){
        return a+b;
    }
}

// 4. Create a contract called StoreNumber

// Requirements:
// Create a uint variable called number
// Create a function setNumber(uint _num) to store a value
// Create a function getNumber() to return the value

contract StoreNumber{
    uint number ;
    function setNumber(uint _num) public{
        number = _num;
    }

    function getNumber() public view returns(uint){
        return number;
    }
}


// 5. Create a contract called Profile

// Requirements:
// Create a string variable name
// Create a function setName(string memory _name)
// Create a function getName() that returns the name

contract Profile{
    string name ;
    function setName(string memory _name) public{
        name = _name;
    }

    function getName() public view returns (string memory){
        return name;
    }
}

// 6. Create a contract called Owner

// Requirements:
// Create an address variable owner
// Create a function setOwner(address _owner)
// Create a function getOwner() to return the owner

contract Owner{
    address owner ;
    function setOwner(address _owner) public{
        owner = _owner;
    }

    function getOwner() public view returns(address){
        return owner;
    }
}


// 7. Create a contract called User

// Requirements:
// Variables: string name, uint age
// Create a function:
// setUser(string memory _name, uint _age)
// And another function: getUser()
// It should return both values.

contract User{
    string name ;
    uint age ;
    function setUser(string memory _name, uint _age) public{
        name = _name;
        age = _age;
    }
    function getUser() public view returns(string memory, uint){
        return (name, age);
    }
}
*/

// 8. Create a contract called Caller

// Requirements:
// Create a function: whoCalled()
// It should return the address of the person calling the function.
// Hint: msg.sender

contract Caller{
    function whoCalled() public view returns(address){
        return msg.sender;
    }
}