REMIX DEFAULT WORKSPACE

This is a group con contracts that test the diferent data structures and variables that might be used with Solidity.

There are also two interesting contacts called TaskList.sol and StudentsRegistry.sol

TASKLIST Contract

this allow to any account user to add a TASK using an string(_text), and a integer as its dificulty grade (_dif)

Functions: 

addTask -> adds a task 
getTaskbyId -> returns a task after giving an id(string+dificulty)
getTaskTextbyId -> returns the task value after giving an id (only the string)
getAllTaskTxt -> return all the task on an array.

![addTask](main/screenshots/tasklist.png)

StudentsRegistry Contract

This allows an account to register some personal data to the contract, but only once (one per adress)

Functions:

registerMe -> register the account data given by the user
unRegisterMe -> unregist the account data  when the user ask for it 
getmydata()-> give the accountant her/his personal info
getStudentsList -> returns a list of names of the students

DEFAULT TEXT README


This workspace contains 3 directories:

1. 'contracts': Holds three contracts with increasing levels of complexity.
2. 'scripts': Contains four typescript files to deploy a contract. It is explained below.
3. 'tests': Contains one Solidity test file for 'Ballot' contract & one JS test file for 'Storage' contract.

SCRIPTS

The 'scripts' folder has four typescript files which help to deploy the 'Storage' contract using 'web3.js' and 'ethers.js' libraries.

For the deployment of any other contract, just update the contract's name from 'Storage' to the desired contract and provide constructor arguments accordingly 
in the file `deploy_with_ethers.ts` or  `deploy_with_web3.ts`

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Storage' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.

Please note, require/import is supported in a limited manner for Remix supported modules.
For now, modules supported by Remix are ethers, web3, swarmgw, chai, multihashes, remix and hardhat only for hardhat.ethers object/plugin.
For unsupported modules, an error like this will be thrown: '<module_name> module require is not supported by Remix IDE' will be shown.
