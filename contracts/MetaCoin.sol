//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./ConvertLib.sol";

contract MetaCoin {
    mapping (address => uint) public balances;
    event Transfer(address indexed _from, address indexed _to, uint _value);

    constructor() {
        balances[tx.origin] = 10000;
    }

    function sendCoin(address receiver, uint amount) public returns (bool sufficient) {
        if (balances[msg.sender] < amount) return false;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Transfer(msg.sender, receiver, amount);
        return true;
    }
    function getBalanceInEth(address addr) public view returns (uint) {
        return ConvertLib.convert(balances[addr], 2);
    }
    function getBalance(address addr) public view returns (uint) {
        return balances[addr];
    }
}