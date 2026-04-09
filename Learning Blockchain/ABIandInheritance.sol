// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.18;

// contract Animal{
//     string public species;

//     function setSpecies(string memory _species) public virtual{
//         species = _species;
//     }
// }

// contract Dog is Animal{
//     string public breed;

//     function setBreed(string memory _breed) public{
//         breed = _breed;
//     }
// }

// ==========================================================================================
// contract Parent{
//     function greet() public virtual returns (string memory){
//         return "Hello from Parent";
//     }
// }

// contract Child is Parent{
//     function greet() public override pure returns (string memory){
//         return "Hello from Child";
//     }
// }

// ==================================================================================================

// contract Person{
//     string public name;
//     constructor(string memory _name){
//         name = _name;
//     }
// }

// contract Student is Person{
//     uint public score;
//     constructor(string memory _name, uint256 _score) Person(_name){
//         score = _score;
//     }

// }

// contract Storage{
//     uint private number;

//     function setNumber(uint _num) public {
//         number = _num;
//     }

//     function getNumber() public view returns(uint256){
//         return number;
//     }
// }

// contract Reader{
//     function storeStorage() public {

//     }
// }

// contract Walker{
//     function walk() public pure virtual  returns (string memory){
//         return "walking";
//     }
// }

// contract Swimmer{
//     function swim() public pure virtual  returns(string memory){
//         return  "swimming";
//     }
// }

// contract Amphibian is Walker,Swimmer{
// }

// contract Vehicle{
//     uint256 public speed;

//     function setSpeed(uint256 _speed) public {
//         speed = _speed;
//     }
// }

// contract Car is Vehicle{
//     function increaseSpeed(uint _amount) public {
//         speed += _amount;
//     }
// }


contract BankAccount{
    uint public balance;

    function deposit(uint _amount) public{
        balance += _amount;
    }

    function getBalance() public view returns(uint256){
        return balance;
    }
}

contract UserAccount is BankAccount{
    function withdraw(uint _amount) public {
        require(balance >= _amount, "Not enough funds");
        balance -= _amount;
    }
}