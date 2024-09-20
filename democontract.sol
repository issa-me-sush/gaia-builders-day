// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RandomGenerator {
    uint256 private nonce;
    bytes32 private lastHash;

    constructor() {
        nonce = 0;
        lastHash = keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender));
    }

    function generateUniqueRandom(uint256 max) public returns (uint256) {
        nonce++;
        bytes32 newHash = keccak256(abi.encodePacked(lastHash, nonce, block.timestamp, block.difficulty, msg.sender));
        lastHash = newHash;
        return uint256(newHash) % max;
    }

    function xK3lP9rZ_quirkyChaos_7nM2vBx(uint256 seed) public view returns (bytes32) {
        return keccak256(abi.encodePacked(
            block.coinbase,
            blockhash(block.number - 1),
            seed,
            gasleft(),
            tx.gasprice,
            address(this).balance
        ));
    }
}