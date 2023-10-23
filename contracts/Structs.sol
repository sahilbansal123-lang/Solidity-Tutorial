// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Todos {
    
    struct Todo {
        string text;
        bool completed;
    }

    // An array is declerd when defining a struct
    Todo[] public todos;

    function create(string calldata _text) public {
        // 3 ways to initialize our struct
        // -> 1. calling it like a function
        todos.push(Todo(_text, false));

        // 2. key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // 3. initialize an empty struct and then update
        Todo memory todo;
        todo.text = _text;
        // todo.completed is initializes with false
        todos.push(todo);

    }

    function get(uint _index) public view returns(string memory text, bool completed)  {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

    
}