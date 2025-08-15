//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "forge-std/Test.sol";

contract ConsoleTest is Test {
    function testLog() public pure {
        console.log("This is a test log message", "with multiple arguments", 42);
    
        //Error Test
        int x = -1;
        console.logInt(x);
    }



}