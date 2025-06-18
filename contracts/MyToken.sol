// SPDX-License-Identifier: MIT

// this tells the compiler to compile this code with soldity version 0.8.18 or higher but not higher
pragma solidity ^0.8.18;

// importing the 100 line of code to make a token work.It is like saying use the erc20 token bluprimt from OpenZeppelin.
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


// this constructor works when the contract is deployed.
contract MyToken is ERC20 {
    // hhere the initaila supply that we gave is 1000 using.we did minting of 1000 . at the start the user will have 1000 tokens. 
    // initial supply is the number of token you want to start with .
    // This MTk Brings the symbol for your currency. 
    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") {
        // this mint is an function from OpenZipplen. 
        // msg.sender the etherum address that deployed the contract. 
        // Converts full units into smallest units. 
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }
}
