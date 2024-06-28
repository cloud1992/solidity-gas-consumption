// forge test -vv

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Test, console2} from "forge-std/Test.sol";
import {TransientStorageExample} from "../src/TransientStorage.sol";

contract TransientStorage is Test {
    TransientStorageExample public transientStorageExample;

    function setUp() public {
        transientStorageExample = new TransientStorageExample();
    }

    function testTransientStorage() public {
        transientStorageExample.saveValueInStorage(10);

        uint slot0 = transientStorageExample.slot0();
        console2.log("slot0----------------------", slot0);
    }
}
