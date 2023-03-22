// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract estructuras{

//structuras de datos
struct Via
{

string nombre;
string autor;
uint32 dificultad;

}

Via public follaninias = Via ("curador","tu", 2525);

//Array estático

uint8 [] public numeros = [1,2,3,4,5];

}

