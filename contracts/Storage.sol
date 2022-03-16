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
    
  constructor() {
    _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
    _setupRole(EDITOR_ROLE, _msgSender());
  }
    
  modifier onlyEditor() {
    require(hasRole(EDITOR_ROLE,msg.sender), "only EDITOR can execute");
    _;
  }

  /* bool */
  
  function getBool(bytes32 _key) external view returns(bool) {
    return boolStorage[_key];
  }
  
  function setBool(bytes32 _key, bool _value) onlyEditor external {
    boolStorage[_key] = _value;
  }  

  function deleteBool(bytes32 _key) onlyEditor external {
    delete boolStorage[_key];
  }
    
  /* int */
  
  function getInt(bytes32 _key) external view returns(int) {
    return intStorage[_key];
  }
  
  function setInt(bytes32 _key, int _value) onlyEditor external {
    intStorage[_key] = _value;
  }

  function deleteInt(bytes32 _key) onlyEditor external {
    delete intStorage[_key];
  }
    
  /* uint */
  
  function getUint(bytes32 _key) external view returns(uint) {
    return uintStorage[_key];
  }
  
  function setUint(bytes32 _key, uint _value) onlyEditor external {
    uintStorage[_key] = _value;
  }

  function deleteUint(bytes32 _key) onlyEditor external {
    delete uintStorage[_key];
  }

  /* address */

  function getAddress(bytes32 _key) external view returns(address) {
    return addressStorage[_key];
  }

  function setAddress(bytes32 _key, address _value) onlyEditor external {
    addressStorage[_key] = _value;
  }

  function deleteAddress(bytes32 _key) onlyEditor external {
    delete addressStorage[_key];
  }

  /* bytes32 */

  function getBytes32(bytes32 _key) external view returns(bytes32) {
    return bytes32Storage[_key];
  }

  function setBytes32(bytes32 _key, bytes32 _value) onlyEditor external {
    bytes32Storage[_key] = _value;
  }
    
  function deleteBytes32(bytes32 _key) onlyEditor external {
    delete bytes32Storage[_key];
  }
  
  /* bytes */

  function getBytes(bytes32 _key) external view returns(bytes memory) {
    return bytesStorage[_key];
  }

  function setBytes(bytes32 _key, bytes memory _value) onlyEditor external {
    bytesStorage[_key] = _value;
  }

  function deleteBytes(bytes32 _key) onlyEditor external {
    delete bytesStorage[_key];
  }

  /* string */
  
  function getString(bytes32 _key) external view returns(string memory) {
    return stringStorage[_key];
  }
    
  function setString(bytes32 _key, string memory _value) onlyEditor external {
    stringStorage[_key] = _value;
  }

  function deleteString(bytes32 _key) onlyEditor external {
    delete stringStorage[_key];
  }

}
