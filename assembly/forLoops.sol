// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract forLoops {
    function for_loop_solidity(uint256 n, uint256 value)
        public
        pure
        returns (uint256)
    {
        for (uint256 i = 0; i < n; i++) {
            value = 2 * value;
        }
        return value;
    }

    function for_loop_assembly(uint256 n, uint256 value)
        public
        pure
        returns (uint256)
    {
        assembly {
            for {
                let i := 0
            } lt(i, n) {
                i := add(i, 1)
            } {
                value := mul(2, value)
            }

            mstore(0x0, value)
            return(0x0, 32)
        }
    }
}
