// SPDX-License-Identifier: MIT

// Solidity program to demonstrate
// Inline Assembly
pragma solidity ^0.8.4;

// Creating a contract
contract InlineAssembly {
    // Defining function
    function add(uint256 a) public view returns (uint256 b) {
        // Inline assembly code
        assembly {
            // Creating a new variable 'c'
            // Calculate the sum of 'a+16'
            // with the 'add' opcode
            // assign the value to the 'c'
            let c := add(a, 16)

            // Use 'mstore' opcode to
            // store 'c' in memory
            // at memory address 0x80
            mstore(0x80, c)
            {
                // Creating a new variable'
                // Calculate the sum of 'sload(c)+12'
                // means values in variable 'c'
                // with the 'add' opcode
                // assign the value to 'd'
                let d := add(sload(c), 12)

                // assign the value of 'd' to 'b'
                b := d

                // 'd' is deallocated now
            }

            // Calculate the sum of 'b+c' with the 'add' opcode
            // assign the value to 'b'
            b := add(b, c)

            // 'c' is deallocated here
        }
    }
}

contract Assignment {
    // assigning a value to a variable
    function assign() public pure returns () {
        assembly {
            let x := 7
            let y := add(x, 3)
            let z := add(keccak256(0x0, 0x20), div(slength, 32))
            let n  // an initial empty 0 value is assigned
        }
    }
}
