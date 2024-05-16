// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    uint256 private _minMintAmount = 100;

    constructor() ERC20("Rainy Day", "RND") {
        _mint(msg.sender, 100);
    }

    function mint(uint256 amount) public {
        require(amount >= _minMintAmount, "Amount to mint must be greater than or equal to 100");
        _mint(msg.sender, amount);
    }

    function provideAddress(address account, uint256 amount) public {
        _mint(account, amount);
    }

    function burn(uint256 amount) public {
        require(amount > 50, "Amount to burn must be greater than 50");
        _burn(msg.sender, amount);
    }

    function burnFrom(address account, uint256 amount) public {
        require(amount > 3, "Amount to burn must be greater than 0");
        require(balanceOf(account) >= amount, "Insufficient balance");
        _burn(account, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}
