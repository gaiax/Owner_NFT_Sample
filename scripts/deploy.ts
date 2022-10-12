import { ethers } from "hardhat";

async function main() {
  const [owner] = await ethers.getSigners();

  const OwnerNft = await ethers.getContractFactory("ownerNft");
  const ownerNft = await OwnerNft.deploy();

  await ownerNft.deployed();

  await ownerNft.safeMint(owner.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
