//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/MetaCoin.sol";

contract TestMetaCoin {
    MetaCoin meta = MetaCoin(DeployedAddresses.MetaCoin());

    function testInitialBalanceUsingDeployedContract() public {
        uint expected = 10000;
        Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 MetaCoin initially");
    }

    function testInitialBalanceWithNewMetaCoin() public {
        MetaCoin metaCoin = new MetaCoin();
        Assert.equal(metaCoin.getBalance(tx.origin), 10000, "Owner should have 10000 MetaCoin initially");
    }

    function testInitialBalanceWithNewMetaCoin2() public {
        MetaCoin metaCoin = new MetaCoin();
        Assert.equal(metaCoin.getBalance(tx.origin), 10000, "Owner should have 10000 MetaCoin initially");
    }

    function testInitialBalanceWithNewMetaCoin3() public {
        MetaCoin metaCoin = new MetaCoin();
        Assert.equal(metaCoin.getBalance(tx.origin), 10000, "Owner should have 10000 MetaCoin initially");
    }
}