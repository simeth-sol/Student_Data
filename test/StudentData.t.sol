// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {StudentData} from "../src/StudentData.sol";

contract StudentDataTest is Test {
    StudentData public studentdata;

    function setUp() public {
        studentdata = new StudentData("Simon", 28);
    }

    function testInitialValues() public view {
        (string memory name, uint age) = studentdata.getStudent();
        assertEq(name, "Simon");
        assertEq(age, 28);
    }

    function testUpdateAge() public {
        studentdata.updateAge(35);
        (, uint updatedAge) = studentdata.getStudent();
        assertEq(updatedAge, 35);
    }

    function testFuzz_UpdateAge(uint newAge) public {
        studentdata.updateAge(newAge);
        (, uint updatedAge) = studentdata.getStudent();
        assertEq(updatedAge, newAge);
    }
}
