// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {Wallet} from "../src/Wallet.sol";

contract WalletTest is Test {
    Wallet public wallet;

    function setUp() public {
        wallet = new Wallet();
    }

    function testSetOwner() public {
        address newOwner = address(1);
        wallet.setOwner(newOwner);
        assertEq(wallet.owner(), newOwner);
    }

    function test_RevertIf_SetOwnerNotOwner() public {
        vm.prank(address(1));
        vm.expectRevert("Only the owner can set a new owner"); //Revert reason in the test MUST be the same as in the contract
        wallet.setOwner(address(1));    
    }

    

    function test_RevertIfSetOwnerNotOwnerAgain() public {
        //msg.sender == address(this)
        //wallet.setOwner(address(1));

        //Version 1
       /* vm.prank(address(1));
        vm.expectRevert("Only the owner can set a new owner"); // Use the actual revert reason if different
        wallet.setOwner(address(1));
*/
        //Version 2
        vm.startPrank(address(1));
        vm.expectRevert("Only the owner can set a new owner"); // Use the actual revert reason if different
        wallet.setOwner(address(1));
        vm.expectRevert("Only the owner can set a new owner"); // Use the actual revert reason if different
        wallet.setOwner(address(1));
        vm.expectRevert("Only the owner can set a new owner"); // Use the actual revert reason if different
        wallet.setOwner(address(1));
        vm.stopPrank();

    }
}