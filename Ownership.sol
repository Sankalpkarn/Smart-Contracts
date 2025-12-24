// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

contract Ownerwallet {
    address public owner;
    uint public num1 = 1;
    
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function setValue(uint _value) external onlyOwner {
        num1 = _value;
    }


}
// Only the Address through which contract is deployed can edit the value.