// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxWhiltelistedAddresses;
    uint8 public numAddressesWhitelisted;

    mapping(address => bool) public whitelistedAddresses;

    constructor(uint8 _maxWhiltelistedAddresses) {
        maxWhiltelistedAddresses = _maxWhiltelistedAddresses;
    }

    function addAddressToWhiteList() public {
        require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted");
        require(numAddressesWhitelisted < maxWhiltelistedAddresses, "More addresses can't be added, limit reached");

        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}
