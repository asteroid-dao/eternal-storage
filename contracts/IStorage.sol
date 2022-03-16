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
  
}
