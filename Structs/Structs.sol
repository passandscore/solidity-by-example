// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/*
You can define your own type by creating a struct.

They are useful for grouping together related data.

Structs can be declared outside of a contract and imported in another contract.
*/

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    // An array of 'Todo' structs
    Todo[] public todos;

    function create(string memory _text) public {
        // 3 ways to initialize a struct
        // - calling it like a function
        todos.push(Todo(_text, false));

        // key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // initialize an empty struct and then update it
        Todo memory todo;
        todo.text = _text;
        // todo.completed initialized to false

        todos.push(todo);
    }

    // Solidity automatically created a getter for 'todos' so
    // you don't actually need this function.
    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // update text
    function update(uint _index, string memory _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // update completed
    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}

// ********************************************************************************************************
// Here are three ways that you can initialize your sample1 variable, populating it with SampleStruct1 data.

function setSample1() public {
  // method 1 - Procedural
  sample1.id = 1;
  sample1.value = 1;
  sample1.name = "myname";
  sample1.isCreated = true;

  // method 2 - Readable
  sample1 = SampleStruct1({
    id: 2,
    value: 2,
    name: "myname",
    isCreated: true
  });

  // method 3 - Shorter
  sample1 = SampleStruct1(3, 6, "myname", false);
}

// ********************************************************************************************************
