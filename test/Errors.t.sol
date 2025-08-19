// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Test, console} from "forge-std/Test.sol";
import {Errors} from "../src/Errors.sol";

contract ErrorsTest is Test {
    Errors public err;

    function setUp() public {
        err = new Errors();
    }

    function test_ThrowError() public {
        vm.expectRevert("Unauthorized");
        err.throwError();
    }

    function test_ThrowUnauthorized() public {
        vm.expectRevert(Errors.Unauthorized.selector);
        err.throwUnauthorized();
    }
}