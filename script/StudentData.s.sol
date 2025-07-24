// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {StudentData} from "../src/StudentData.sol";

contract StudentDataScript is Script {
    StudentData public studentdata;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        studentdata = new StudentData("Simon", 28);

        vm.stopBroadcast();
    }
}
