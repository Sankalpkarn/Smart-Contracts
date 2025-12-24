// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

contract ToDoList {
    struct task{
    string taskname;
    bool taskstatus;
    }

    task[] public tasks;

    event taskmarked(uint taskId);

    constructor(){
        tasks.push(task("Breakfast", false));
        tasks.push(task("Studying", false));
        tasks.push(task("Walking", false));
    }

    function taskupdate(uint taskId) public {
            tasks[taskId].taskstatus = true;
            emit taskmarked(taskId);
    }



}
// This code is To-DO List, here a user can check whether task is done or not and can mark it as true if updated 