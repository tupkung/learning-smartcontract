// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Bank {

    // uint _balance;
    mapping(address => uint) _balances;

    function deposit(uint amount) public {
        // _balance += amount;
        _balances[msg.sender] += amount;
    }

    function withdraw(uint amount) public {
        // _balance -= amount;
        _balances[msg.sender] -= amount;
    }

    function checkBalance() public view returns(uint balance) {
        return _balances[msg.sender];
    }
}
