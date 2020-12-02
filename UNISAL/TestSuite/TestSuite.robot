*** Settings ***
Documentation    Suite description
Resource    ../Functions/Teste_Keywords.robot
Test Setup      Create Session      Session     ${HOST_GITHUB}  verify=True     
Test Teardown    

*** Test Cases ***

1 Connect to GitHub and log Issues with label=question and state=open
    Connect to Git Repository and log issues

2 Create folder with txt and log it then delete it
    Create folder with txt

2 Connect to database and log users from table 'ACCOUNT'
    Connect to database prova_robotframework and execute script

