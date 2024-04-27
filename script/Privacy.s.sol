// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import {Privacy} from "../src/Privacy.sol";

contract PrivacyScript is Script {
    Privacy public privacy =
        Privacy(0xb0eb6bC7715d0cED94dE35E7381278937722849D);

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        bytes32 key = 0xef501a5af4a467001e25f38890b74fba2c99ad821f55d00f532b67fdbe13fe50;
        console.log("Before unlocking: ", privacy.locked());
        privacy.unlock(bytes16(key));
        console.log("Before unlocking: ", privacy.locked());
        vm.stopBroadcast();
    }
}
