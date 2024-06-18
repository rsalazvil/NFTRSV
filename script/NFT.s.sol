// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {NFT} from "../src/NFT.sol";
import {console} from "forge-std/console.sol";

contract NFTDeploy is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        NFT nft = new NFT("RSVILL","RSV");
        console.log("NFT contract deployed at: ", address(nft));

        vm.stopBroadcast();
    }
}