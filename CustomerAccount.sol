pragma solidity ^0.5.0;

// Create a customer contract to remit funds to others.
contract CustomerAccount{
    address payable owner;
    address payable authorizedRecepient;
    bool isNewAccount;
    uint public accountBalance;
    string customerName;
    string customerLastName;

    function getInfo() view public returns(address, bool, uint, string memory, string memory) {
        return (owner, isNewAccount, accountBalance, customerName, customerLastName);
    }
    
    function setInfo(address payable newOwner, address payable newAuthorizedRecepient, bool newAccountStatus, uint newAccountBalance, string memory newCustomerName, string memory newCustomerLastName) public {
        owner = newOwner;
        authorizedRecepient = new authorizedRecepient;
	isNewAccount = newAccountStatus;
        accountBalance = newAccountBalance;
        customerName = newCustomerName;
        customerLastName = newCustomerLastName;
    }

    function sendRemittance(uint amount, address payable recepient) public {
       require(recepient == owner || recepient == authorizedRecipient , "The recepient address is not authorized!")
       recepient.transfer(amount);
       accountBalance = address(this).balance;
    }

    function deposit() public payable {
       accountBalance = address(this).balance;
    }

    function() external payable {}

}
