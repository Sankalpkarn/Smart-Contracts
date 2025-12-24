// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

contract Attendance {

    mapping(address => bool) public hasAttended;


    function attend() public {
        require(!hasAttended[msg.sender], "Already Attended");
        hasAttended[msg.sender]=true;
    }
    
    function checkAttendance() external view returns (bool) {
        return hasAttended[msg.sender];
    }

}
// This code is to mark and check whether a person has attended a event