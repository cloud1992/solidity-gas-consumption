// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract TransientStorageExample {
    uint public slot0;

    function saveValueInStorage(uint _value) public {
        saveValue(_value);
        slot0 = getValue();
    }

    function saveValue(uint _value) public {
        assembly {
            tstore(0, _value)
        }
    }

    function getValue() public view returns (uint) {
        uint value;
        assembly {
            value := tload(0)
        }
        return value;
    }
}
