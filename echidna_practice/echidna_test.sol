pragma solidity 0.8.17;

import "./Toekn.sol";

contract Echidna_test is Token {

    address echidna_caller = msg.sender;

    constructor() public {
        balances[msg.sender]=1000;
    }

    function echidna_token() public view returns(bool){
        return balances[echidna_caller] <= 1000;
    }    
}