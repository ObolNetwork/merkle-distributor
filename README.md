## Merkle Distributor

### Deploy
```
forge script DeployMerkleDistributor.s.sol:DeployMerkleDistributor \
    $COLLATERAL \
    $MERKLE_ROOT \
    $DEADLINE \
    --sig "run(address,bytes32,uint256)" \
    --rpc-url=$RPC_URL \
    --chain sepolia \
    --sender $SENDER --private-key $PRIVATE_KEY \
    --broadcast \
    --etherscan-api-key $API_KEY \
    --verify
```

### View ABI
```
forge inspect contracts/DeployMerkleDistributor.sol:MerkleDistributorWithDeadline abi
```