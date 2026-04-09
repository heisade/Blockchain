// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/**
contract Math{
    function add(uint a, uint b) public pure returns(uint){
        return  a + b;
    }
}

contract UserModel{
    struct User{
        string name;
        uint age;
    }
}
*/

contract Counter{
    uint public count;
    
    function increment(uint _num) public{
        count += _num;
    }

    function decrement(uint _num) public{
        count -= _num;
    }
}