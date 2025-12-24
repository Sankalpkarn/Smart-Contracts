pragma solidity 0.8.33;
// SPDX-License-Identifier: MIT


contract counter {
    uint count = 0;


    event Incremented(uint value);
    event Decrement(uint value); 

    function increment() public{
        count += 1;
        emit Incremented(count);
    }
    
    function decrement() public {
        count -= 1;
        emit Decrement(count);
    }

    function getCount() public view returns (uint) {
        return count;
    }

         
}