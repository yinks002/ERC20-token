// SPDX-License-Identifier: GPL-3.0
//This is an implementation of a ERC20 token inheriting the openzeppelin smart contract
pragma solidity ^0.8.0;
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';


contract MyToken is ERC20{
    address public Owner; 
    constructor() ERC20('Olayimikas Token','yim'){
        Owner= msg.sender;
        _mint(msg.sender, 50000*10**18);
    }

    function mint(address to,uint amount)external{
        require(msg.sender==Owner,"you are not the admin of this token");
        _mint(to,amount);
    }
    function Burn(uint amount)external{
        _burn(msg.sender,amount);
    }
}
