*** Settings ***
Documentation    Suite description
Resource    ../Functions/Teste_Keywords.robot
Test Setup      Create Session      Session     ${HOST_GITHUB}  verify=True     
Test Teardown    

*** Test Cases ***

Connect to GitHub and log Issues with label=question and state=open
    Connect to Git Repository and log issues

Create folder with txt on it
    Create folder with txt in it

List directory
    List all files on dir

Exclude archive and log results
    Exclude and show results

Connect to database and log users from table 'ACCOUNT'
    Connect to database prova_robotframework and execute script

