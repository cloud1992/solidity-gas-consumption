// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ForLoop {
    uint public n = 5;

    // function to loop from 0 to n unchecked 1
    function loopForUnchecked1() public view {
        for (uint i = 0; i < n; ) {
            unchecked {
                ++i;
            }
        }
    }

    // function to loop from 0 to n unchecked 1, payable
    function loopForUnchecked1Payable() public payable {
        for (uint i = 0; i < n; ) {
            unchecked {
                ++i;
            }
        }
    }

    // function to loop from 0 to n unchecked 2
    function loopForUnchecked2() public view {
        for (uint i = 0; i < n; ) {
            unchecked {
                i++;
            }
        }
    }

    // function to loop from 0 to n
    function loopForPostIncrement() public view {
        for (uint i = 0; i < n; i++) {}
    }

    // function to loop from 0 to n without assignation
    function loopForPostIncrementWithOutAssignation() public view {
        for (uint i; i < n; i++) {}
    }

    // function to loop from 0 to n without assignation
    function loopForPostIncrementWithOutAssignation1() public view {
        for (uint i; i < n; i++) {}
    }

    // function to loop from 0 to n
    function loopWhile() public view {
        uint i = 0;
        while (i < n) {
            i++;
        }
    }

    // function to loop from 0 to n
    function loopDoWhile() public view {
        uint i = 0;
        do {
            i++;
        } while (i < n);
    }

    // function to loop from 0 to n
    function loopForPreIncrement() public view {
        for (uint i = 0; i < n; ++i) {}
    }
}
