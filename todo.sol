// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.4;

contract Tasks{
    
    struct Task{
        uint id;
        string task;
        bool isCompleted;
    }

    Task[] private tasks_list;

    function addTask(string calldata task_data) external{
        uint id = tasks_list.length;
        tasks_list.push(Task(id, task_data, false));
    }

    function getTasks() external view returns (Task[] memory){
        return tasks_list;
    }

    function getTaskByIndex(uint index) external view returns (Task memory){
        return tasks_list[index];
    }

    function completeTask(uint id) external {
        tasks_list[id].isCompleted = true;
    }
}