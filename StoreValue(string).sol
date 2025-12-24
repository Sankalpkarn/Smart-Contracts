pragma solidity 0.8.33;
// SPDX-License-Identifier: MIT


contract Greeting {
    
    string name = 'user';
    string greet = 'Hello ';

    function getMessage() public view returns (string memory) {
       return string(abi.encodePacked(greet, name));

    }

    function setName(string calldata _value) external {
        name = _value;
    }
         
}