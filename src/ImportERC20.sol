//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

/*
USING FORGE INSTALL <LIBRARY>
import "lib/solmate/src/tokens/ERC20.sol";

contract Token is ERC20("CoinTest", "CTE", 18) {

} */

/*
USING NPM I <LIBRARY>
*/
import "@openzeppelin/contracts/access/Ownable.sol";

contract TestOwnable is Ownable {
    constructor() Ownable(msg.sender) {}
}

