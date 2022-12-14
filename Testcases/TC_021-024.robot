*** Settings ***
Library    SeleniumLibrary
Resource    ../utilities/keyword.resource
Resource    ../utilities/variable.resource
Suite Setup    Set Screenshot Directory    SampleProject\Screenshots
Test Setup    Set Selenium Speed     1

*** Test Cases ***
TC_021 Verify the Email icon should redirect into the Email window
    App_Launch
    Loging_in
    Sleep    4
    Click Element    ${email_icon}    
    Sleep    2
    Click Element    ${preview_icon}    
    Sleep    4
    #Page Should Contain Textfield    ${mail_box} 
    ${emailcontent}=    Get Text    ${mail_box}
    #Element Text Should Be    ${mail_box}    Hi Ragul S,
    Log To Console    \n${emailcontent}
    Sleep    4  
    Click Element    ${preview x_btn}  
    Click Element    ${email x_btn}    
    Loging_out
    Close Browser 
    
TC_022 Verify the Edit icon should redirect into the Edit profile window
    App_Launch   
    Loging_in
    Sleep    4   
    Click Element    ${edit_icon}    
    Sleep    2
    Scroll Element Into View    ${edit_cancel}
    Sleep    4    
    Click Element    ${text_area}    
    Clear Element Text    ${text_area}
    Sleep    2
    Input Text    ${text_area}    Test Robot Framework   
    Click Button    ${edit_cancel}    
    Sleep    4
    Loging_out    
    Close Browser 
    

TC_023 Verify the Note icon should redirect to the Add Note window
    App_Launch
    Loging_in
    Sleep    4    
    Click Element    ${note_icon} 
    Sleep    4       
    Click Button    ${click_note}
    #Sleep    2    
    Input Text    ${write_note}    Robot Test Case
    Sleep    4            
    Click Button    ${write_cancel} 
    Sleep    4       
    Click Element    ${note x_btn}    
    Loging_out
    Close Browser
    
TC_024 Verify the add new investment 
    App_Launch
    Loging_in    
    Sleep    4    
    Click Element    ${rahul_shan}
 
    Scroll Element Into View    ${act_scrl}  
    Click Element    ${investment}    
    Click Button    ${add_invest}  
  
    Click Element    ${offer_drpdwn}     
    Select From List By Label    ${offer_drpdwn}    test2offer
    Input Text    ${invest_amt}    50000.00    
    Click Element    ${profile_type}
    Select From List By Label    ${profile_type}    Ragul S
       
    Click Element    ${profile_status}    
       
    Select From List By Label    ${profile_status}    Declined
        
    #Click Element    ${funcrecd}    
    Input Text    ${funcrecd}    12-Dec-2022    
    sleep  4
    Input Text    ${doc_sign}    14-Dec-2022  
    Sleep    4      
    Click Button    ${add_x_btn}    
    Loging_out
    Close Browser  
    



