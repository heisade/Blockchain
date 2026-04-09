// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;  // stating our version

/**
contract SimpleStorage_basicVariables {
    bool hasFavouriteNumber = true;
    uint favouriteNumber = 88;
    string favoriteNumberInText = "eighty-eight";
    int256 favoriteInt = -88;
    address myAddress = 0x246E5A917bd9B4F0B83cC1b89F869c5cFa757Ee0;
    bytes32 favoriteBytes32 = "cat";
}
*/

contract SimpleStorage {
    uint myFavoriteNumber ;

    struct Person{
        uint favoriteNumber;
        string name;
    }

    Person[] public listOfPeople; //Dynamic Array 

    // Person public pat = Person({favoriteNumber: 7, name:"Pat"});
    // Person public ade = Person({favoriteNumber: 10, name: "Ade"});
    // Person public john = Person({favoriteNumber: 20, name: "John"});

    mapping(string => uint256) public nameToFavorite;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavorite[_name] = _favoriteNumber;
    }
}


