// forge test -vv

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Test, console2} from "forge-std/Test.sol";
import {ReturnMultipleParams} from "../src/ReturnMultipleParams.sol";

contract ReturnMultipleParamsTest is Test {
    ReturnMultipleParams public returnMultipleParams;

    function setUp() public {
        returnMultipleParams = new ReturnMultipleParams();
    }

    function testReturnMultipleParams() public view {
        returnMultipleParams.returnOneParam();
        uint gasl;
        uint gasleft2;

        gasl = gasleft();
        uint result = returnMultipleParams.returnOneParam();
        gasleft2 = gasleft();
        console2.log("returnOneParam-------------", gasl - gasleft2);

        gasl = gasleft();
        (uint a, ) = returnMultipleParams.returnTwoParams();
        gasleft2 = gasleft();
        console2.log("returnTwoParams------------", gasl - gasleft2);

        gasl = gasleft();
        (uint b, , ) = returnMultipleParams.returnThreeParams();
        gasleft2 = gasleft();
        console2.log("returnThreeParams----------", gasl - gasleft2);

        gasl = gasleft();
        (uint c, , , ) = returnMultipleParams.returnFourParams();
        gasleft2 = gasleft();
        console2.log("returnFourParams-----------", gasl - gasleft2);

        gasl = gasleft();
        (uint d, , , , ) = returnMultipleParams.returnFiveParams();
        gasleft2 = gasleft();
        console2.log("returnFiveParams-----------", gasl - gasleft2);

        gasl = gasleft();
        (uint e, , , , , ) = returnMultipleParams.returnSixParams();
        gasleft2 = gasleft();
        console2.log("returnSixParams------------", gasl - gasleft2);
    }
}
