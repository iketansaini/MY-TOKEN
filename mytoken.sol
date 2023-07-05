  // SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract MyToken {

    // Public variables that store the details about the token
    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply = 0;

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Mint function
    function mint(address to, uint256 amount) public {
        totalSupply += amount;
        balances[to] += amount;
    }

    // Burn function
    function burn(address from, uint256 amount) public {
        require(balances[from] >= amount, "Not enough tokens to burn");
        totalSupply -= amount;
        balances[from] -= amount;
    }
}
