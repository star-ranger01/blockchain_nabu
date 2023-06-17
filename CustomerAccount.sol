pragma solidity ^0.5.0;

// Create a customer contract to remit funds to others.
contract CustomerAccount{
    address owner;
    bool isNewAccount;
    uint public accountBalance;
    string customerName;
    string customerLastName;
    
    function getInfo () public returns {};
}