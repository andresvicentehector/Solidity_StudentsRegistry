// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Variables{


//enteros

uint256 private num1= 20;
int8 private num2=50;


//strings

string private cadena="gola";
string private  cadeno='hola'; //both are valid 

//Bools

bool verda =true;
bool fals = false;
bool entrada ;


address public dir = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
//la funcion msg.sender siempre devuelve la dirección que está interactuando con el contrato
address public owner =msg.sender;


//bytes 
bytes32 public hasing = keccak256(abi.encodePacked("ConquerBlocks"));

enum estado {verdadero,falso}

estado public _estado1= estado.falso;
estado public _estado2=estado.verdadero;

} 