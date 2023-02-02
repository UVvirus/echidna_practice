pragma solidity 0.8.7;

import "./quillctfchall1.sol";

contract Quillctf is RoadClosed {

    address echidna_caller=msg.sender;
    event ownerChanged(address oldOwner, address newOwner);

    // Telling echidna to prove that the msg.sender is an owner.
    // Echidna will try to prove that this statement is wrong. 
    function echidna_become_an_owner() public returns(bool){
        //This will return boolean value False, until echidna finds a way to break it
        //require(echidna_caller == owner);
        emit ownerChanged(owner, echidna_caller);
        return echidna_caller == owner;
        
    }
    
    
}