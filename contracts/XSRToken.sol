pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract XSRToken is ERC20Detailed, ERC20, ERC20Pausable, Ownable {

    using SafeMath for uint256;
    
    constructor (
            string memory name,
            string memory symbol,
            uint256 totalSupply,
            uint8 decimals
    ) ERC20Detailed(name, symbol, decimals)
    public {
        _mint(owner(), totalSupply * 10**uint(decimals));
    }
}