pragma solidity ^0.4.22;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/SafeERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract SymphonyProtocol is ERC20, ERC20Detailed, Ownable {

  using SafeMath for uint256;

  constructor() public ERC20Detailed("Symphony Protocol Token", "SYM", 18) {
    _mint(msg.sender, 10000000000 * 10 ** uint(decimals()));
  }

  function bulkTransfer(address[] addresses, uint256[] amounts) public returns (bool) {
    require(addresses.length == amounts.length);
    for (uint i = 0; i < addresses.length; i++) {
      _transfer(msg.sender, addresses[i], amounts[i]);
    }
    return true;
  }

  function transferOwnership(address newOwner) public onlyOwner {
    super.transferOwnership(newOwner);
    _transfer(msg.sender, newOwner, balanceOf(msg.sender));
  }
}
