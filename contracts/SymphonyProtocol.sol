pragma solidity ^0.4.22;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/SafeERC20.sol";

contract SymphonyProtocol is ERC20, ERC20Detailed {

  using SafeERC20 for ERC20;
  using SafeMath for uint256;

  uint8 private __decimals = 18;

  constructor() public ERC20Detailed("Symphony Protocol Token", "SYM", __decimals) {
    _mint(msg.sender, 10000000000 * 10 ** uint(__decimals));
  }
}
