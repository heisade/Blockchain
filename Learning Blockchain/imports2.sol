// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "./imports1.sol";
/**
contract Calculator{
    Math public calculator;
    function createMathContract() public {
        calculator = new Math();
    }
}


contract UserRegistory is UserModel{
    mapping (address => User) public users;

    function registerUser(string memory name, uint age) public {
        users[msg.sender] = User(name,age); 
    }

    function getUser() public view returns(string memory, uint){
        return (users[msg.sender].name, users[msg.sender].age);
    }
}
*/

contract _counter{
    Counter public counter;
    function createIncrement() public {
        counter = new Counter();
    }

    function add(uint num) public {
        counter.increment(num);
    }

    function subtract(uint num) public {
        counter.decrement(num);
    }

    function getCount() public view returns(uint){
        return counter.count();
    }
}