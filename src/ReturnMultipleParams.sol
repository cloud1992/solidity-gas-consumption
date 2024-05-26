// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ReturnMultipleParams {
    function returnOneParam() public pure returns (uint) {
        return 1;
    }

    function returnTwoParams() public pure returns (uint, uint) {
        return (1, 2);
    }

    function returnThreeParams() public pure returns (uint, uint, uint) {
        return (1, 2, 3);
    }

    function returnFourParams() public pure returns (uint, uint, uint, uint) {
        return (1, 2, 3, 4);
    }

    function returnFiveParams()
        public
        pure
        returns (uint, uint, uint, uint, uint)
    {
        return (1, 2, 3, 4, 5);
    }

    function returnSixParams()
        public
        pure
        returns (uint, uint, uint, uint, uint, uint)
    {
        return (1, 2, 3, 4, 5, 6);
    }
}
