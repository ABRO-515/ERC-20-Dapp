
const hre = require("hardhat");

async function main() {
    const MyToken = await hre.ethers.getContractFactory("MyToken");
    const token = await MyToken.deploy(1000);

    await token.deployed();
    console.log("MyToken deployed to:", token.address);

}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
})