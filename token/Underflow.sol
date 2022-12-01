pragma solidity ^0.8;

interface IToken {
    function transfer(address _to, uint _value) external returns (bool);
}

contract Underflow {
    IToken token;

    constructor(address tokenAddress) {
        token = IToken(tokenAddress);
    }

    function transfer(address _to) public {
        token.transfer(_to, 69);
    }

}
