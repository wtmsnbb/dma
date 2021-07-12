pragma solidity ^0.6.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract mockToken is ERC20 {
    constructor(
        string memory name_,
        string memory symbol_,
        uint8 decimal,
        uint256 amount
    ) public ERC20(name_, symbol_) {
        _setupDecimals(decimal);
        _mint(msg.sender, amount);
    }
}
