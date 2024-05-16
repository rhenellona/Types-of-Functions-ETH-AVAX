# Token & Mint

This contract is an ERC20 token with functionalities allowing minting, providing token to an address, burning tokens, and transferring tokens between addresses.

## Description

Allows minting, burning, and transferring tokens between addresses. 

## Usage/Features

1. Allows minting tokens, through the mint function providing amount that is greater or equal to 100.
2. Allows token holders to burn their own tokens, through the burn function providing that the amount is greater than 50 which effectively reduce the token supply.
3. Allows burning tokens from specific accounts, provided that they have sufficient amount in their account.
4. Allows providing tokens to other addresses. 

### What to do before executing program?

* Import ERC20 token. 
  
### Executing Program 
* After cloning the github, you will want to do the following to get the code running on your computer.

1. Use any solidity compiler, I used remix IDE.
2. Go to solidity compiler, and compile file.
3. On the deploy & run transactions panel, click deploy.
4. On the deployed contracts panel, you can try to mint, burn, and transfer amounts to different addresses.

Feel free to mint, burn, and transfer amounts!

## Authors

Rhene F. Llona
email : 8213812@ntc.edu.ph


## License

Unlicensed.
