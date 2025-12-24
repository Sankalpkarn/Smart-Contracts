pragma solidity 0.8.33;
// SPDX-License-Identifier: MIT


contract Storage {
    uint stored_value = 4;

    function getValue() public view returns (uint) {
        return stored_value;
    }

    function setValue(uint _value) external {
        stored_value = _value;
    }
         
}