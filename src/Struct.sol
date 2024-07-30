// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Struct { 

    struct Todo {
        string text;
        bool completed;
    }

    //after struct, always create Array
    Todo[] public todos;

    function create(string calldata _text) public {
        todos.push(Todo(_text, false));

        Todo memory todo;
        todo.text = _text;
    }

    function get(uint256 _index) public view returns (string memory, bool completed) 
    {
        Todo storage todo = todos[_index];
        return(todo.text, todo.completed);
    }

    function updateText(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

  

}