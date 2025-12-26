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

    function addtasks(string calldata _taskname) external {
        tasks.push(task(_taskname, false));

    }

    function statusupdate(uint taskId) public {
            tasks[taskId].taskstatus = true;
            emit taskmarked(taskId);
    }

    function getList() public view returns (task[] memory) {
        return tasks;
    }



}
// This code is To-DO List, here a user can check whether task is done or not and can mark it as true if updated, you can add a task
