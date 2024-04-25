// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Privacy} from "../src/Privacy.sol";

contract PrivacyScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
    }
}
