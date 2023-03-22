// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Estructuras {


//structs
struct  Alumnos  {
  string nombre;
  string apellido;
  uint32 edad;

}

Alumnos public juan = Alumnos("Juan", "Perez", 32);

//arrays 

uint16  [] private nums_Nosing_Array;

uint8 [4] public nums_Nosing_definite; 

uint [8] public nums_nosing_withVal = [2,3,4,5,6,7,8,9];
    

//Mapppings Key value

mapping (address=>uint32) keyadress_valueNum;
mapping (address=>Alumnos) keyadress_valueStuctAlumno;
mapping (string=> Alumnos[]) keystring_valueArrayAlumnos;
}