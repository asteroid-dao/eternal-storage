const { Contract, ContractFactory, Signer, Wallet, utils } = require("ethers")
const { expect } = require("chai")
const { from18, to18, a, b, deploy, deployJSON } = require("../lib/utils")
const { map } = require("ramda")
describe("Storage", function () {
  let p, p2, p3
  let storage
  const b32 = ethers.utils.formatBytes32String("test")
  const b32_null = ethers.utils.formatBytes32String("")

  beforeEach(async () => {
    ;[p, p2, p3] = await ethers.getSigners()
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

  it("Should store bool array values", async function () {
    await storage.setBoolArray(b32, [true, false])
    expect(await storage.getBoolArray(b32)).to.eql([true, false])
    await storage.deleteBoolArray(b32)
    expect(await storage.getBoolArray(b32)).to.eql([])
  })

  it("Should store uint array values", async function () {
    await storage.setUintArray(b32, [1, 2, 3])
    expect(map(v => v.toNumber())(await storage.getUintArray(b32))).to.eql([
      1,
      2,
      3,
    ])
    await storage.deleteUintArray(b32)
    expect(await storage.getUintArray(b32)).to.eql([])
  })

  it("Should store int array values", async function () {
    await storage.setIntArray(b32, [-1, -2, -3])
    expect(map(v => v.toNumber())(await storage.getIntArray(b32))).to.eql([
      -1,
      -2,
      -3,
    ])
    await storage.deleteIntArray(b32)
    expect(await storage.getIntArray(b32)).to.eql([])
  })

  it("Should store address array values", async function () {
    await storage.setAddressArray(b32, [a(p), a(p2), a(p3)])
    expect(await storage.getAddressArray(b32)).to.eql([a(p), a(p2), a(p3)])
    await storage.deleteAddressArray(b32)
    expect(await storage.getAddressArray(b32)).to.eql([])
  })

  it("Should store string array values", async function () {
    await storage.setStringArray(b32, ["test", "test2", "test3"])
    expect(await storage.getStringArray(b32)).to.eql(["test", "test2", "test3"])
    await storage.deleteStringArray(b32)
    expect(await storage.getStringArray(b32)).to.eql([])
  })

  it("Should store bytes32 array values", async function () {
    await storage.setBytes32Array(b32, [b32, b32, b32])
    expect(await storage.getBytes32Array(b32)).to.eql([b32, b32, b32])
    await storage.deleteBytes32Array(b32)
    expect(await storage.getBytes32Array(b32)).to.eql([])
  })

  it("Should store bytes array values", async function () {
    const bytes = "0x123456"
    await storage.setBytesArray(b32, [bytes, bytes])
    expect(await storage.getBytesArray(b32)).to.eql([bytes, bytes])
    await storage.deleteBytesArray(b32)
    expect(await storage.getBytesArray(b32)).to.eql([])
  })
})
