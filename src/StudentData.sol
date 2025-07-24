// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    string public name;
    uint256 public age;

    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }

    function updateAge(uint256 _newAge) public {
        age = _newAge;
    }

    function getStudent() public view returns (string memory, uint256) {
        return (name, age);
    }
}
