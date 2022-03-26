//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";

contract Storage is AccessControlEnumerable {
  bytes32 public constant EDITOR_ROLE = keccak256("EDITOR_ROLE");

  mapping(bytes32 => bool) boolStorage;
  mapping(bytes32 => int) intStorage;
  mapping(bytes32 => uint) uintStorage;
  mapping(bytes32 => address) addressStorage;
  mapping(bytes32 => bytes32) bytes32Storage;
  mapping(bytes32 => bytes) bytesStorage;
  mapping(bytes32 => string) stringStorage;

  mapping(bytes32 => bool[]) boolArray;
  mapping(bytes32 => int[]) intArray;
  mapping(bytes32 => uint[]) uintArray;
  mapping(bytes32 => address[]) addressArray;
  mapping(bytes32 => bytes32[]) bytes32Array;
  mapping(bytes32 => bytes[]) bytesArray;
  mapping(bytes32 => string[]) stringArray;
    
  constructor() {
    _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
    _setupRole(EDITOR_ROLE, _msgSender());
  }
    
  /* bool */
  
  function getBool(bytes memory _key) external view returns(bool) {
    return boolStorage[keccak256(_key)];
  }
  
  function setBool(bytes memory _key, bool _value) onlyRole(EDITOR_ROLE) external {
    boolStorage[keccak256(_key)] = _value;
  }  

  function deleteBool(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete boolStorage[keccak256(_key)];
  }
    
  /* int */
  
  function getInt(bytes memory _key) external view returns(int) {
    return intStorage[keccak256(_key)];
  }
  
  function setInt(bytes memory _key, int _value) onlyRole(EDITOR_ROLE) external {
    intStorage[keccak256(_key)] = _value;
  }

  function deleteInt(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete intStorage[keccak256(_key)];
  }
    
  /* uint */
  
  function getUint(bytes memory _key) external view returns(uint) {
    return uintStorage[keccak256(_key)];
  }
  
  function setUint(bytes memory _key, uint _value) onlyRole(EDITOR_ROLE) external {
    uintStorage[keccak256(_key)] = _value;
  }

  function deleteUint(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete uintStorage[keccak256(_key)];
  }

  /* address */

  function getAddress(bytes memory _key) external view returns(address) {
    return addressStorage[keccak256(_key)];
  }

  function setAddress(bytes memory _key, address _value) onlyRole(EDITOR_ROLE) external {
    addressStorage[keccak256(_key)] = _value;
  }

  function deleteAddress(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete addressStorage[keccak256(_key)];
  }

  /* bytes32 */

  function getBytes32(bytes memory _key) external view returns(bytes32) {
    return bytes32Storage[keccak256(_key)];
  }

  function setBytes32(bytes memory _key, bytes32 _value) onlyRole(EDITOR_ROLE) external {
    bytes32Storage[keccak256(_key)] = _value;
  }
    
  function deleteBytes32(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete bytes32Storage[keccak256(_key)];
  }
  
  /* bytes */

  function getBytes(bytes memory _key) external view returns(bytes memory) {
    return bytesStorage[keccak256(_key)];
  }

  function setBytes(bytes memory _key, bytes memory _value) onlyRole(EDITOR_ROLE) external {
    bytesStorage[keccak256(_key)] = _value;
  }

  function deleteBytes(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete bytesStorage[keccak256(_key)];
  }

  /* string */
  
  function getString(bytes memory _key) external view returns(string memory) {
    return stringStorage[keccak256(_key)];
  }
    
  function setString(bytes memory _key, string memory _value) onlyRole(EDITOR_ROLE) external {
    stringStorage[keccak256(_key)] = _value;
  }

  function deleteString(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete stringStorage[keccak256(_key)];
  }

  /* bool array */
  
  function getBoolArray(bytes memory _key) external view returns(bool[] memory) {
    return boolArray[keccak256(_key)];
  }
  
  function setBoolArray(bytes memory _key, bool[] memory _value) onlyRole(EDITOR_ROLE) external {
    boolArray[keccak256(_key)] = _value;
  }  

  function deleteBoolArray(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete boolArray[keccak256(_key)];
  }
    
  /* int array */
  
  function getIntArray(bytes memory _key) external view returns(int[] memory) {
    return intArray[keccak256(_key)];
  }
  
  function setIntArray(bytes memory _key, int[] memory _value) onlyRole(EDITOR_ROLE) external {
    intArray[keccak256(_key)] = _value;
  }

  function deleteIntArray(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete intArray[keccak256(_key)];
  }
    
  /* uint array */
  
  function getUintArray(bytes memory _key) external view returns(uint[] memory) {
    return uintArray[keccak256(_key)];
  }
  
  function setUintArray(bytes memory _key, uint[] memory _value) onlyRole(EDITOR_ROLE) external {
    uintArray[keccak256(_key)] = _value;
  }

  function deleteUintArray(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete uintArray[keccak256(_key)];
  }

  /* address array */

  function getAddressArray(bytes memory _key) external view returns(address[] memory) {
    return addressArray[keccak256(_key)];
  }

  function setAddressArray(bytes memory _key, address[] memory _value) onlyRole(EDITOR_ROLE) external {
    addressArray[keccak256(_key)] = _value;
  }

  function deleteAddressArray(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete addressArray[keccak256(_key)];
  }

  /* bytes32 array */

  function getBytes32Array(bytes memory _key) external view returns(bytes32[] memory) {
    return bytes32Array[keccak256(_key)];
  }

  function setBytes32Array(bytes memory _key, bytes32[] memory _value) onlyRole(EDITOR_ROLE) external {
    bytes32Array[keccak256(_key)] = _value;
  }
    
  function deleteBytes32Array(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete bytes32Array[keccak256(_key)];
  }
  
  /* bytes array */

  function getBytesArray(bytes memory _key) external view returns(bytes[] memory) {
    return bytesArray[keccak256(_key)];
  }

  function setBytesArray(bytes memory _key, bytes[] memory _value) onlyRole(EDITOR_ROLE) external {
    bytesArray[keccak256(_key)] = _value;
  }

  function deleteBytesArray(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete bytesArray[keccak256(_key)];
  }

  /* string array */
  
  function getStringArray(bytes memory _key) external view returns(string[] memory) {
    return stringArray[keccak256(_key)];
  }
    
  function setStringArray(bytes memory _key, string[] memory _value) onlyRole(EDITOR_ROLE) external {
    stringArray[keccak256(_key)] = _value;
  }

  function deleteStringArray(bytes memory _key) onlyRole(EDITOR_ROLE) external {
    delete stringArray[keccak256(_key)];
  }
  
}
