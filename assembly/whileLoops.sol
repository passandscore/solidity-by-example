// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract If {
    function if_solidity(uint256 ether_sent) public pure returns (uint256) {
        // free delivery on orders less than 0.25 ethers

        if (ether_sent < 0.25 ether) revert();

        // more code...
    }

    function if_assembly(uint256 ether_sent) public pure returns (uint256) {

   assembly {
    if slt(x, 0) { x := sub(0, x) }  // Ok
            
    if eq(value, 0) revert(0, 0)    // Error, curly braces needed
}
        }
