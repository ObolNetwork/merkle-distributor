pragma solidity ^0.8.28;

import {Script, console} from "forge-std/Script.sol";
import {MerkleDistributorWithDeadline} from "../contracts/MerkleDistributorWithDeadline.sol";

contract DeployMerkleDistributor is Script {
    function run(address collateral, bytes32 merkleRoot, uint256 deadline) external {
        vm.startBroadcast();

        // Deploy the contract
        MerkleDistributorWithDeadline merkleDistributor = new MerkleDistributorWithDeadline(
            collateral,
            merkleRoot,
            deadline
        );
        console.log("MerkleDistributorWithDeadline=", address(merkleDistributor));

        vm.stopBroadcast();
    }
}
