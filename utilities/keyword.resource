
*** Settings ***
Library    SeleniumLibrary
Resource    variable.resource

*** Keywords ***

App_Launch
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
Loging_in
    Input Text    ${login_user}    ${username}    
    Input Password    ${login_pass}    ${password}
    Click Element    ${login_btn}
       
Loging_out
    Click Element    ${logout_drpdwn}
    Sleep    2      
    Click Element    ${logout_btn}
    Close Browser
    



