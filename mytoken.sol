// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// The contract is named 'MyToken.' It represents a token on the blockchain.

contract MyToken {

    // First, we have three public variables: 'name' , 'symbol' and 'totalSupply'. These variables store the name , symbol and totalSupply of the token, respectively. In this case, the name is 'MyToken,' , the symbol is 'MTK and total supply of the token. At the beginning, it is initialized to 0.

    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply = 0;

    //  mapping called 'balances.' This mapping is used to keep track of the token balances of different addresses. The keys of the mapping are addresses, and the values are the corresponding token balances.

    mapping(address => uint256) public balances;

    // The 'mint' function is used to create new tokens and assign them to a specific address. It takes two parameters: 'to,' which represents the address to which the tokens will be assigned, and 'amount,' which specifies the number of tokens to be created.

    function mint(address to, uint256 amount) public {

    // the total supply of the tokens is increased by the specified amount, and the token balance of the 'to' address is also increased by the same amount.

        totalSupply += amount;
        balances[to] += amount;
    }

    // the 'burn' function is used to destroy existing tokens held by a specific address. It takes two parameters: 'from,' which represents the address from which the tokens will be burned, and 'amount,' which specifies the number of tokens to be burned.

    function burn(address from, uint256 amount) public {

   // a check is performed to ensure that the 'from' address has enough tokens to burn. If the condition is satisfied, the total supply of the tokens is decreased by the specified amount, and the token balance of the 'from' address is reduced by the same amount

        require(balances[from] >= amount, "Not enough tokens to burn");
        totalSupply -= amount;
        balances[from] -= amount;
    }
}
