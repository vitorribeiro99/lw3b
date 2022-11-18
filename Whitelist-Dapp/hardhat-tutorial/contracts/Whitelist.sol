// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist {

    // maximum number of addresses which can be whitelisted
    uint8 public maxWhitelistAddresses;
    
    //keep track of number of addresses whitelisted till now
    uint8 public numAddressWhitelisted;

    mapping(address => bool) public whitelistedAddresses;

    constructor(uint8 _maxWhitelistAddresses) {
        maxWhitelistAddresses = _maxWhitelistAddresses;
    }

    function addAddressToWhitelist() public {
        require(!whitelistedAddresses[msg.sender], "Sender already in the whitelist");
        require(numAddressWhitelisted < maxWhitelistAddresses, "Max limit reached");

        whitelistedAddresses[msg.sender] = true;
        numAddressWhitelisted += 1;
    }

    


}