// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/*
Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.

storage - variable is a state variable (store on blockchain)
memory - variable is in memory and it exists while a function is being called
calldata - special data location that contains function arguments, only available for external functions

CALLDATA-
This is the cheapest location to use, but it has a limited size. In particular, that means that functions may be limited in their number of arguments.1 Notable implementation details about calldata are as follows:

It can only be used for function declaration parameters (and not function logic)
It is immutable (it can't be overwritten and changed)
It must be used for dynamic parameters of an external function
It is non-persistent (the value does not persist after the transaction has completed)
*/

contract DataLocations {
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    function f() public {
        // call _f with state variables
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do something with storage variables
    }

    // You can return memory variables
    function g(uint[] memory _arr) public returns (uint[] memory) {
        // do something with memory array
    }

    function h(uint[] calldata _arr) external {
        // do something with calldata array
    }
}
