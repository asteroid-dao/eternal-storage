const { Contract, ContractFactory, Signer, Wallet, utils } = require("ethers")
const { expect } = require("chai")
const { from18, to18, a, b, deploy, deployJSON } = require("../lib/utils")

describe("Storage", function () {
  let p
  let storage
  const b32 = ethers.utils.formatBytes32String("test")
  const b32_null = ethers.utils.formatBytes32String("")
  beforeEach(async () => {
    ;[p] = await ethers.getSigners()
    storage = await deploy("Storage")
  })
  it("Should store bool values", async function () {
    await storage.setBool(b32, true)
    expect(await storage.getBool(b32)).to.equal(true)
    await storage.deleteBool(b32)
    expect(await storage.getBool(b32)).to.equal(false)
  })
  it("Should store uint values", async function () {
    await storage.setUint(b32, 3)
    expect(await storage.getUint(b32)).to.equal(3)
    await storage.deleteUint(b32)
    expect(await storage.getUint(b32)).to.equal(0)
  })
  it("Should store int values", async function () {
    await storage.setInt(b32, -3)
    expect(await storage.getInt(b32)).to.equal(-3)
    await storage.deleteInt(b32)
    expect(await storage.getInt(b32)).to.equal(0)
  })
  it("Should store address values", async function () {
    await storage.setAddress(b32, a(p))
    expect(await storage.getAddress(b32)).to.equal(a(p))
    await storage.deleteAddress(b32)
    expect(await storage.getAddress(b32)).to.equal(
      "0x0000000000000000000000000000000000000000"
    )
  })
  it("Should store string values", async function () {
    await storage.setString(b32, "test")
    expect(await storage.getString(b32)).to.equal("test")
    await storage.deleteString(b32)
    expect(await storage.getString(b32)).to.equal("")
  })
  it("Should store bytes32 values", async function () {
    await storage.setBytes32(b32, b32)
    expect(await storage.getBytes32(b32)).to.equal(b32)
    await storage.deleteBytes32(b32)
    expect(await storage.getBytes32(b32)).to.equal(b32_null)
  })
  it("Should store bytes values", async function () {
    const bytes = "0x123456"
    await storage.setBytes(b32, bytes)
    expect(await storage.getBytes(b32)).to.equal(bytes)
    await storage.deleteBytes(b32)
    expect(await storage.getBytes(b32)).to.equal("0x")
  })
})
