// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract GovernanceTokenVoting is ERC20Votes {
  uint256 public s_maxSupply = 1000000000000000000000000;
 // snapshot of tokens people have at certain time
  constructor() ERC20("GovernanceTokenVoting", "GT") ERC20Permit("GovernanceTokenVoting") {
    _mint(msg.sender, s_maxSupply);
  }

  // The functions below are overrides required by Solidity.
  function _afterTokenTransfer(
    address from,
    address to,
    uint256 amount
  ) internal override(ERC20Votes) {
    super._afterTokenTransfer(from, to, amount);
  }

  function _mint(address to, uint256 amount) internal override(ERC20Votes) {
    super._mint(to, amount);
  }

  function _burn(address account, uint256 amount) internal override(ERC20Votes) {
    super._burn(account, amount);
  }
}


