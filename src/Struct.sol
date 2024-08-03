// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Struct { 

   struct Todo {
    string text;
    bool completed;
   }

    //array always
   Todo[] public todos;

   function create(string calldata _text) public {
        todos.push(Todo(_text,false));

        Todo memory todo;
        todo.text = _text;
   }

   function Update(uint256 _index ,string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
   }
  

}