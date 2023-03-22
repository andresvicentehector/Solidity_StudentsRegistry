// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

contract StudentsRegistry {


struct Student {
 
 string name;
 string surname;

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

function registerMe( string memory _name,string memory _surname, uint8  _age) public returns(bool success){

if(! StudentList[msg.sender].exist){
    
StudentList[msg.sender] = Student( _name,_surname, _age, true);
Names.push(_name);
Number++;
return true;
}
else{
    return false;
}




}

function unRegisterMe() public returns(bool success){

if(StudentList[msg.sender].exist)
{
    StudentList[msg.sender]=Student("","",0,false);
}
return true;
}




function getmydata() public view returns(Student memory _student){

return StudentList[msg.sender];

}

function getStudentsList () public view  returns(string [] memory  _names ){

return Names;

}


}
