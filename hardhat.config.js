/** @type import('hardhat/config').HardhatUserConfig */

require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

const RPC_URL = process.env.RPC_URL; // Ensure this is in your .env file
const PRIVATE_KEY = process.env.PRIVATE_KEY; // Your wallet private key
const ETHERSCAN_API_KEY = process.env.ETHERSCAN_API_KEY; // Etherscan API key for verification

module.exports = {
  solidity: "0.8.28",
  networks: {
    hardhat: {
      accounts: {
        count: 520, // Generate 520 accounts
      },
      allowUnlimitedContractSize: true,
    },
    sepolia: {
      url: RPC_URL,
      accounts: [PRIVATE_KEY],
    },
  },
  etherscan: {
    apiKey: ETHERSCAN_API_KEY, // Sepolia uses the same Etherscan API
  },
};
