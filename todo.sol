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

    function getTask() external view returns (Task[] memory){
        return tasks_list;
    }
}