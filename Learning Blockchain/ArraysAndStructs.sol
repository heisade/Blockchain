// SPDX-License-Identifier: MIT
pragma solidity  0.8.18;

/**
//1.  Simple Struct
// Create a contract StudentData

// Requirements:
// Create a struct called Student with: name, age
// Then create a variable: Student public student;
// Create a function: setStudent(string memory _name, uint _age)
// that sets the student data.

contract StudentData{
    struct Student{
        string name;
        uint age;
    }
    
    Student public student;

    function setStudents(string memory _name, uint _age) public{
        student = Student(_name, _age);
    }

    //2. Return Struct Data
    // Continue from the previous contract.
    // Create a function:
    // getStudent()
    // It should return: name, age

    function getStudents() public view returns(Student memory){
        return student;
    }
}


//3. Struct With Address
// Create a contract UserRegistry

// Create a struct: User

// Fields: name, age, wallet

// Create a function: registerUser(string memory _name, uint _age)

// The function should automatically store: wallet = msg.sender

contract UserRegistry{
    struct User{
        string name;
        uint age;
        address wallet;
    }

    User public user;

    function registerUser(string memory _name, uint _age, address _owner) public {
        user = User(_name, _age, _owner);
    }
}

//4. Simple Array

// Create a contract Numbers
// Create an array: uint[] public numbers;
// Create a function: addNumber(uint _num) that pushes numbers into the array.

contract Numbers{
    uint[] public numbers;

    function addNumber(uint _num) public {
        numbers.push(_num);
    }

    //5. Get Array Length

    // Add a function: getLength()
    // that returns the length of the array.
    // Hint: numbers.length

    function getLength() public view returns(uint){
        return numbers.length;
    }

    //6. Get Specific Number

    //Add a function:
    //getNumber(uint index)
    //that returns the number at that index.

    function getNumber(uint index)public view returns(uint){
        return numbers[index];
    }
}
*/

//7. Store Many Users

// Create a contract Users
// Create a struct: User

// Fields: name, age

// Create an array:
// User[] public users;

// Create a function:
// addUser(string memory _name, uint _age)
// that pushes a new user into the array.


contract Users{
    struct User{
        string name;
        uint age;
    }
    User[] users;

    function addUser(string memory _name, uint _age) public {
        users.push(User(_name, _age));
    }
    
    //8. Return a Specific User

    // Create a function:
    // getUser(uint index)

    // Return: name, age

    function getUser(uint index) public view returns(string memory, uint){
        return (users[index].name, users[index].age);
    }

    function deleteUser(uint index) public {
        delete users[index];
    }

}



