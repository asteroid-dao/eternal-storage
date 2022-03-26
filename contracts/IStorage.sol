//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IStorage  {

  /* bool */
  
  function getBool(bytes memory _key) external view returns(bool);
  
  function setBool(bytes memory _key, bool _value) external;

  function deleteBool(bytes memory _key) external;
    
  /* int */
  
  function getInt(bytes memory _key) external view returns(int);
  
  function setInt(bytes memory _key, int _value) external;

  function deleteInt(bytes memory _key) external;
    
  /* uint */
  
  function getUint(bytes memory _key) external view returns(uint);
  
  function setUint(bytes memory _key, uint _value) external;

  function deleteUint(bytes memory _key) external;

  /* address */

  function getAddress(bytes memory _key) external view returns(address);

  function setAddress(bytes memory _key, address _value) external;

  function deleteAddress(bytes memory _key) external;

  /* bytes32 */

  function getBytes32(bytes memory _key) external view returns(bytes32);

  function setBytes32(bytes memory _key, bytes32 _value) external;
    
  function deleteBytes32(bytes memory _key) external;
  
  /* bytes */

  function getBytes(bytes memory _key) external view returns(bytes memory);

  function setBytes(bytes memory _key, bytes memory _value) external;

  function deleteBytes(bytes memory _key) external;

  /* string */
  
  function getString(bytes memory _key) external view returns(string memory);
    
  function setString(bytes memory _key, string memory _value) external;

  function deleteString(bytes memory _key) external;

  
  /* bool array */
  
  function getBoolArray(bytes memory _key) external view returns(bool[] memory);
  
  function setBoolArray(bytes memory _key, bool[] memory _value) external;

  function deleteBoolArray(bytes memory _key) external;
    
  /* int array */
  
  function getIntArray(bytes memory _key) external view returns(int[] memory);
  
  function setIntArray(bytes memory _key, int[] memory _value) external;

  function deleteIntArray(bytes memory _key) external;
    
  /* uint array */
  
  function getUintArray(bytes memory _key) external view returns(uint[] memory);
  
  function setUintArray(bytes memory _key, uint[] memory _value) external;

  function deleteUintArray(bytes memory _key) external;

  /* address array */

  function getAddressArray(bytes memory _key) external view returns(address[] memory);

  function setAddressArray(bytes memory _key, address[] memory _value) external;

  function deleteAddressArray(bytes memory _key) external;

  /* bytes32 array */

  function getBytes32Array(bytes memory _key) external view returns(bytes32[] memory);

  function setBytes32Array(bytes memory _key, bytes32[] memory _value) external;
    
  function deleteBytes32Array(bytes memory _key) external;
  
  /* bytes array */

  function getBytesArray(bytes memory _key) external view returns(bytes[] memory);

  function setBytesArray(bytes memory _key, bytes[] memory _value) external;

  function deleteBytesArray(bytes memory _key) external;

  /* string array */
  
  function getStringArray(bytes memory _key) external view returns(string[] memory);
    
  function setStringArray(bytes memory _key, string[] memory _value) external;

  function deleteStringArray(bytes memory _keyy) external;
  
}
