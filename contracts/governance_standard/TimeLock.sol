// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/governance/TimelockController.sol";
//  We want to wait for a new vote to be execute, give time to users to get out of proposals
// Contract wizards to get template code link: https://docs.openzeppelin.com/contracts/4.x/api/governance

contract TimeLock is TimelockController {
  //  minDelay: waits before executing
  //  proposers: list of addresses that can propose
  //  executers: who can execute when a proposal passes
  constructor(
    uint256 minDelay,
    address[] memory proposers,
    address[] memory executers
  ) TimelockController(minDelay, proposers, executers) {}
}
