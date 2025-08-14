// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {HelloWorld} from "../src/helloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld public helloWorld;

    function setUp() public {
        helloWorld = new HelloWorld();
    }

    function test_getGreeting() public {
        string memory expectedGreeting = "Hello, World!";
        string memory actualGreeting = helloWorld.getGreeting();
        assertEq(actualGreeting, expectedGreeting, "Greeting should be 'Hello, World!'");
    }

    function test_setGreeting() public {
        string memory newGreeting = "Hello, Foundry!";
        helloWorld.setGreeting(newGreeting);
        string memory actualGreeting = helloWorld.getGreeting();
        assertEq(actualGreeting, newGreeting, "Greeting should be updated to 'Hello, Foundry!'");
    }
}