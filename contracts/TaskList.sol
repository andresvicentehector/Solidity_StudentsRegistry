// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

contract TaskList {

enum difficulty {EASY, MED, HARD,IMPOSIBLE}


struct Task {

    string nameTask;
    difficulty level;
    uint8 id;
}



mapping(uint8 =>Task)  Tasks;
uint8 numTask;
address owner;
string [] textTask;


constructor() {

    owner = msg.sender;
    numTask = 0;
}

function addTask(string memory _text, difficulty _dif) public  returns (bool success)

{
 
 Tasks[numTask]= Task( _text, _dif, numTask);
 textTask.push(Tasks[numTask].nameTask);
 numTask++;

 return true;

}

function getTaskbyId(uint8 _id) public view returns ( Task memory _task ) 
{

  // a concrete mapping field is an struct; this is why returns an struct 
    return Tasks[_id];
}

function getTaskTextbyId(uint8 _id) public view returns  (string memory _taskText)
{
    return Tasks[_id].nameTask;
}

function getAllTaskTxt () public view returns ( string  [] memory _textTasks)
 {
return textTask;
 }


}