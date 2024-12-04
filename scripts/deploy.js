const { ethers } = require("hardhat");

async function main() {

  const contract = await ethers.deployContract("ChitChat");

  console.log(`Deployed Token at ${await contract.getAddress()} !`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
