// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

contract StudentsRegistry {


struct Student {
 
 string name;
 uint8 age;

 bool exist; 
}

mapping(address=>Student) StudentList;


uint32 private Number;
address public Owner;
string [] private Names;


constructor(){ 
    Owner= msg.sender;
    Number=0;
 
    }

function registerMe( string memory _name, uint8  _age) public returns(bool success){

if(! StudentList[Owner].exist){
    
StudentList[Owner] = Student( _name, _age, true);
Names.push(_name);
Number++;

}



return true;
}




function getmydata() public view returns(Student memory _student){

return StudentList[Owner];

}

function getStudentsList () public view  returns(string [] memory  _names ){

return Names;

}


}
