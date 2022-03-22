//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IStorage  {

  /* bool */
  
  function getBool(bytes32 _key) external view returns(bool);
  
  function setBool(bytes32 _key, bool _value) external;

  function deleteBool(bytes32 _key) external;
    
  /* int */
  
  function getInt(bytes32 _key) external view returns(int);
  
  function setInt(bytes32 _key, int _value) external;

  function deleteInt(bytes32 _key) external;
    
  /* uint */
  
  function getUint(bytes32 _key) external view returns(uint);
  
  function setUint(bytes32 _key, uint _value) external;

  function deleteUint(bytes32 _key) external;

  /* address */

  function getAddress(bytes32 _key) external view returns(address);

  function setAddress(bytes32 _key, address _value) external;

  function deleteAddress(bytes32 _key) external;

  /* bytes32 */

  function getBytes32(bytes32 _key) external view returns(bytes32);

  function setBytes32(bytes32 _key, bytes32 _value) external;
    
  function deleteBytes32(bytes32 _key) external;
  
  /* bytes */

  function getBytes(bytes32 _key) external view returns(bytes memory);

  function setBytes(bytes32 _key, bytes memory _value) external;

  function deleteBytes(bytes32 _key) external;

  /* string */
  
  function getString(bytes32 _key) external view returns(string memory);
    
  function setString(bytes32 _key, string memory _value) external;

  function deleteString(bytes32 _key) external;

  
  /* bool array */
  
  function getBoolArray(bytes32 _key) external view returns(bool[] memory);
  
  function setBoolArray(bytes32 _key, bool[] memory _value) external;

  function deleteBoolArray(bytes32 _key) external;
    
  /* int array */
  
  function getIntArray(bytes32 _key) external view returns(int[] memory);
  
  function setIntArray(bytes32 _key, int[] memory _value) external;

  function deleteIntArray(bytes32 _key) external;
    
  /* uint array */
  
  function getUintArray(bytes32 _key) external view returns(uint[] memory);
  
  function setUintArray(bytes32 _key, uint[] memory _value) external;

  function deleteUintArray(bytes32 _key) external;

  /* address array */

  function getAddressArray(bytes32 _key) external view returns(address[] memory);

  function setAddressArray(bytes32 _key, address[] memory _value) external;

  function deleteAddressArray(bytes32 _key) external;

  /* bytes32 array */

  function getBytes32Array(bytes32 _key) external view returns(bytes32[] memory);

  function setBytes32Array(bytes32 _key, bytes32[] memory _value) external;
    
  function deleteBytes32Array(bytes32 _key) external;
  
  /* bytes array */

  function getBytesArray(bytes32 _key) external view returns(bytes[] memory);

  function setBytesArray(bytes32 _key, bytes[] memory _value) external;

  function deleteBytesArray(bytes32 _key) external;

  /* string array */
  
  function getStringArray(bytes32 _key) external view returns(string[] memory);
    
  function setStringArray(bytes32 _key, string[] memory _value) external;

  function deleteStringArray(bytes32 _key) external;
  
}
