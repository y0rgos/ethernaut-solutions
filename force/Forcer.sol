pragma solidity ^0.8;

contract Forcer {

    address forceAddress;

    constructor(address _forceAddress) {
        forceAddress  = _forceAddress;
    }

    function recv() external payable {}

    function send() public{
        selfdestruct(payable(forceAddress));
    }

}
