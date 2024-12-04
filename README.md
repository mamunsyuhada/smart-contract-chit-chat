# Deploy Smart Contract

## Description

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.


```bash
npm install
```

```bash
➜  smart-contract-chit-chat git:(main) ✗ npx hardhat run scripts/deploy.js --network sepolia
Deployed Token at 0xe54979a82E7B9C0ef2953345eCxxxxxxxxxxx !
```

```bash
➜  smart-contract-chit-chat git:(main) ✗ npx hardhat verify --network sepolia 0xe54979a82E7B9C0ef2953345eCxxxxxxxxxxx
[INFO] Sourcify Verification Skipped: Sourcify verification is currently disabled. To enable it, add the following entry to your Hardhat configuration:

sourcify: {
  enabled: true
}

Or set 'enabled' to false to hide this message.

For more information, visit https://hardhat.org/hardhat-runner/plugins/nomicfoundation-hardhat-verify#verifying-on-sourcify
Successfully submitted source code for contract
contracts/ChitChat.sol:ChitChat at 0xe54979a82E7B9C0ef2953345eCxxxxxxxxxxx
for verification on the block explorer. Waiting for verification result...

Successfully verified contract ChitChat on the block explorer.
https://sepolia.etherscan.io/address/0xe54979a82E7B9C0ef2953345eCxxxxxxxxxxx#code
```


