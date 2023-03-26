pragma solidity ^0.8;

contract BecomeTheKing {
    address kingAddress;

    constructor(address _kingAddress) {
        kingAddress = _kingAddress;
    }

    function becomeTheKing() public payable {
        payable(kingAddress).call{value: msg.value}("");
    }
}
