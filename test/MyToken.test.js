const { expect } = require("chai");

describe("MyToken", function () {
  it("Should deploy with correct total supply", async function () {
    const [owner] = await ethers.getSigners();
    const MyToken = await ethers.getContractFactory("MyToken");
    const token = await MyToken.deploy(1000);
    await token.deployed();

    const totalSupply = await token.totalSupply();
    expect(await token.balanceOf(owner.address)).to.equal(totalSupply);
  });
});
