//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract Errors {
    // Custom Error for unauthorized access
    error Unauthorized();

    function throwError() external pure {
        require(false, "Unauthorized");
    }
    
    function throwUnauthorized() public pure {
        revert Unauthorized();
    }
}