// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    string public name;
    uint public age;

    constructor(string memory _name, uint _age) {
        name = _name;
        age = _age;
    }

    function updateAge(uint _newAge) public {
        age = _newAge;
    }
   
    function getStudent() public view returns (string memory, uint) {
        return (name, age);
    }
}