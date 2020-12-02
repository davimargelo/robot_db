*** Settings ***
Library     OperatingSystem
Library     JSONLibrary
Library     RequestsLibrary
Library     Collections
Library     DatabaseLibrary

*** Variables ***
${HOST_GITHUB}     https://api.github.com/repos/davimargelo/robot_db

*** Keywords ***
Connect to Git Repository and log issues    
    ${resp}=        Get Request     Session     /issues?labels=question&state=open
    ${title}=       Get Value From Json      ${resp.json()}        $..title     
    Log to Console     ${title}

Create folder with txt
    Create File         D:/robot/teste.txt            Hello, world!
    List Directory      D:/robot/
    Remove File     D:/robot/teste.txt

Connect to database prova_robotframework and execute script
    Connect To Database	    psycopg2 	   prova_robotframework        postgres        postgres        localhost    5500
    Execute Sql Script      ./create_table_accounts.sql
    Execute Sql String      INSERT INTO account(user_id, username, password, email) VALUES (1, 'Joao Silva', 'robot987', 'joaosilva@unisal.br') 
    @{queryResult}=         Query       Select * from account
    Log to Console     @{queryResult}
    Execute Sql String      TRUNCATE TABLE ACCOUNT
