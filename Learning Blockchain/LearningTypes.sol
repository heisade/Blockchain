// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;



//1. Create a contract called Person.

// Inside the contract declare:
// a uint variable called age
// a string variable called name

contract person{
    uint age = 23;
    string name = "Adeyinka";
}

//2. Create a contract called Numbers.
// Declare:
// an int variable called temperature
// a uint variable called balance

contract numbers{
    int temperature ;
    uint balance ;
}

//3. Create a contract called Wallet.
// Declare:
// an address variable called owner

contract Wallet{
    address owner = 0x246E5A917bd9B4F0B83cC1b89F869c5cFa757Ee0;
}

//4.  Create a contract called Secret.
// Declare:
// a bytes32 variable called passwordHash

contract secret{
    bytes32 passwordHash ;
}

// 5. Create a contract called User.

// Declare the following variables:
// string username
// uint age
// address wallet
// bytes32 secretKey

contract user{
    string Username = "heisade";
    uint age = 23;
    address wallet = 0x246E5A917bd9B4F0B83cC1b89F869c5cFa757Ee0;
    bytes32 secretKey = bytes32("MoreLoveLessEgo");
}


contract car{
    string brand = "Toyota";
    uint year = 2024;
    address owner = 0x246E5A917bd9B4F0B83cC1b89F869c5cFa757Ee0;
}