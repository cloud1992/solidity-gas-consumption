// forge test -vv

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Test, console2} from "forge-std/Test.sol";
import {ForLoop} from "../src/ForLoop.sol";

contract ForLoopTest is Test {
    ForLoop public forLoop;

    function setUp() public {
        forLoop = new ForLoop();
    }

    function testLoopForPostIncrement() public {
        forLoop.loopForPostIncrement();

        uint gasle = gasleft();
        forLoop.loopForPostIncrement();
        uint gasle2 = gasleft();
        console2.log(
            "loopForPostIncrement----------------------",
            gasle - gasle2
        );

        gasle = gasleft();
        forLoop.loopForPostIncrementWithOutAssignation();
        gasle2 = gasleft();
        console2.log(
            "loopForPostIncrementWithOutAssignation----",
            gasle - gasle2
        );

        gasle = gasleft();
        forLoop.loopForPostIncrementWithOutAssignation1();
        gasle2 = gasleft();
        console2.log(
            "loopForPostIncrementWithOutAssignation1---",
            gasle - gasle2
        );

        gasle = gasleft();
        forLoop.loopWhile();
        gasle2 = gasleft();
        console2.log(
            "loopWhile---------------------------------",
            gasle - gasle2
        );

        gasle = gasleft();
        forLoop.loopDoWhile();
        gasle2 = gasleft();
        console2.log(
            "loopDoWhile-------------------------------",
            gasle - gasle2
        );

        gasle = gasleft();
        forLoop.loopForPreIncrement();
        gasle2 = gasleft();
        console2.log(
            "loopForPreIncrement-----------------------",
            gasle - gasle2
        );

        gasle = gasleft();
        forLoop.loopForUnchecked1();
        gasle2 = gasleft();
        console2.log(
            "loopForUnchecked1-------------------------",
            gasle - gasle2
        );

        gasle = gasleft();
        forLoop.loopForUnchecked1Payable();
        gasle2 = gasleft();
        console2.log(
            "loopForUnchecked1Payable------------------",
            gasle - gasle2
        );

        gasle = gasleft();
        forLoop.loopForUnchecked2();
        gasle2 = gasleft();
        console2.log(
            "loopForUnchecked2-------------------------",
            gasle - gasle2
        );
    }
}
