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
  
  function getBool(bytes32 _key) external view returns(bool) {
    return boolStorage[_key];
  }
  
  function setBool(bytes32 _key, bool _value) onlyRole(EDITOR_ROLE) external {
    boolStorage[_key] = _value;
  }  

  function deleteBool(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete boolStorage[_key];
  }
    
  /* int */
  
  function getInt(bytes32 _key) external view returns(int) {
    return intStorage[_key];
  }
  
  function setInt(bytes32 _key, int _value) onlyRole(EDITOR_ROLE) external {
    intStorage[_key] = _value;
  }

  function deleteInt(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete intStorage[_key];
  }
    
  /* uint */
  
  function getUint(bytes32 _key) external view returns(uint) {
    return uintStorage[_key];
  }
  
  function setUint(bytes32 _key, uint _value) onlyRole(EDITOR_ROLE) external {
    uintStorage[_key] = _value;
  }

  function deleteUint(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete uintStorage[_key];
  }

  /* address */

  function getAddress(bytes32 _key) external view returns(address) {
    return addressStorage[_key];
  }

  function setAddress(bytes32 _key, address _value) onlyRole(EDITOR_ROLE) external {
    addressStorage[_key] = _value;
  }

  function deleteAddress(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete addressStorage[_key];
  }

  /* bytes32 */

  function getBytes32(bytes32 _key) external view returns(bytes32) {
    return bytes32Storage[_key];
  }

  function setBytes32(bytes32 _key, bytes32 _value) onlyRole(EDITOR_ROLE) external {
    bytes32Storage[_key] = _value;
  }
    
  function deleteBytes32(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete bytes32Storage[_key];
  }
  
  /* bytes */

  function getBytes(bytes32 _key) external view returns(bytes memory) {
    return bytesStorage[_key];
  }

  function setBytes(bytes32 _key, bytes memory _value) onlyRole(EDITOR_ROLE) external {
    bytesStorage[_key] = _value;
  }

  function deleteBytes(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete bytesStorage[_key];
  }

  /* string */
  
  function getString(bytes32 _key) external view returns(string memory) {
    return stringStorage[_key];
  }
    
  function setString(bytes32 _key, string memory _value) onlyRole(EDITOR_ROLE) external {
    stringStorage[_key] = _value;
  }

  function deleteString(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete stringStorage[_key];
  }

  /* bool array */
  
  function getBoolArray(bytes32 _key) external view returns(bool[] memory) {
    return boolArray[_key];
  }
  
  function setBoolArray(bytes32 _key, bool[] memory _value) onlyRole(EDITOR_ROLE) external {
    boolArray[_key] = _value;
  }  

  function deleteBoolArray(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete boolArray[_key];
  }
    
  /* int array */
  
  function getIntArray(bytes32 _key) external view returns(int[] memory) {
    return intArray[_key];
  }
  
  function setIntArray(bytes32 _key, int[] memory _value) onlyRole(EDITOR_ROLE) external {
    intArray[_key] = _value;
  }

  function deleteIntArray(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete intArray[_key];
  }
    
  /* uint array */
  
  function getUintArray(bytes32 _key) external view returns(uint[] memory) {
    return uintArray[_key];
  }
  
  function setUintArray(bytes32 _key, uint[] memory _value) onlyRole(EDITOR_ROLE) external {
    uintArray[_key] = _value;
  }

  function deleteUintArray(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete uintArray[_key];
  }

  /* address array */

  function getAddressArray(bytes32 _key) external view returns(address[] memory) {
    return addressArray[_key];
  }

  function setAddressArray(bytes32 _key, address[] memory _value) onlyRole(EDITOR_ROLE) external {
    addressArray[_key] = _value;
  }

  function deleteAddressArray(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete addressArray[_key];
  }

  /* bytes32 array */

  function getBytes32Array(bytes32 _key) external view returns(bytes32[] memory) {
    return bytes32Array[_key];
  }

  function setBytes32Array(bytes32 _key, bytes32[] memory _value) onlyRole(EDITOR_ROLE) external {
    bytes32Array[_key] = _value;
  }
    
  function deleteBytes32Array(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete bytes32Array[_key];
  }
  
  /* bytes array */

  function getBytesArray(bytes32 _key) external view returns(bytes[] memory) {
    return bytesArray[_key];
  }

  function setBytesArray(bytes32 _key, bytes[] memory _value) onlyRole(EDITOR_ROLE) external {
    bytesArray[_key] = _value;
  }

  function deleteBytesArray(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete bytesArray[_key];
  }

  /* string array */
  
  function getStringArray(bytes32 _key) external view returns(string[] memory) {
    return stringArray[_key];
  }
    
  function setStringArray(bytes32 _key, string[] memory _value) onlyRole(EDITOR_ROLE) external {
    stringArray[_key] = _value;
  }

  function deleteStringArray(bytes32 _key) onlyRole(EDITOR_ROLE) external {
    delete stringArray[_key];
  }
  
}
