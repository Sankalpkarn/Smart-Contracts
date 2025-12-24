pragma solidity 0.8.33;
// SPDX-License-Identifier: MIT


contract Calc {
    
    uint num1 = 0;
    uint num2 = 0;
    uint symbol = 0;
    uint result = 0;


    function setNum1(uint _value) external {
        num1 = _value;
    }

    function setNum2(uint _value) external {
        num2 = _value;
    }

    function setSymbol(uint _value) external {
        symbol = _value;
    }


    function getresult() public view returns (uint) {
        if (symbol == 0) {
            return num1 + num2;
        
        } else if (symbol == 1) {
            return num1 - num2;
           
        } else if (symbol == 2) {
            return num1 * num2;
            
        } else if (symbol == 3) {
            require(num2 != 0, "Division by zero");
            return num1 / num2;
        } else {
            return result;
        }

// Results value can't be less than zero or in Boolean
    }

          
}