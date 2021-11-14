pragma solidity >=0.7.1 <0.9.0;
// SPDX-License-Identifier: Mike Tayson

contract Group {

    struct Person {
        string name;
    }
    
    Person[] public people;

    function getCount() public view returns (uint) {
        return people.length;
    }

    function addPerson(string memory name) public {
        require(bytes(name).length > 0, "Error: Dont leave the name empty!");
        Person memory p = Person(name);
        people.push(p);
    }

    function getPeople() public view returns (Person[] memory) {
        return people;
    }
}