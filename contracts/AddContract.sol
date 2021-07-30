// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddContract {
    event AddEvent(uint value, uint total);
    uint public total;

    function addTotal(uint number)
        public
    {
        total += number;
        emit AddEvent(number, total);
    }
}