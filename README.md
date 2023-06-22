# MyToken

MyToken is an ERC20-compatible token contract implemented in Solidity.

## Overview

MyToken provides a basic token functionality, allowing users to mint and burn tokens. It includes the following features:

- Minting new tokens and assigning them to specific addresses.
- Burning tokens from a specific address.

## Token Details

- Name: MyToken
- Symbol: MTK
- Total Supply: 0 (initially)

## Getting Started

To use or deploy this token contract, you need to have a Solidity development environment set up. You can compile and deploy the contract using tools like Remix, Truffle, or Hardhat.

## Deployment
To use this contract, you will need to deploy it to a blockchain. Once it is deployed, you can interact with it using the following functions:
name(): Returns the name of the token.
symbol(): Returns the symbol of the token.
totalSupply(): Returns the total supply of tokens.
balanceOf(address): Returns the number of tokens owned by an address.
transfer(address, uint256): Transfers tokens from one address to another.
## Usage

The contract exposes the following functions:

### `mint(address to, uint256 amount)`

Mints new tokens and assigns them to the specified `to` address.

### `burn(address from, uint256 amount)`

Burns tokens from the specified `from` address.



