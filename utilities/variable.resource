*** Variables ***
#Url & Credentials
${url}    https://credor-app.azurewebsites.net/
${username}    admin@credor.com
${password}    Excel@123
${browser}    edge

#Login Page Elements
${login_user}    //input[@id='login_email']
${login_pass}    //input[@id='login_password']
${login_btn}    //button[@id='login_submit']

#LogOut Elements
${logout_DrpDwn}    //a[@id='navbarDropdown']    
${logout_btn}    //body//app-root//a[2]

#Email Verified Elements
${email_icon}    (//*[name()='svg'])[15]
${preview_icon}    //span[@id='Email_Details_viewdetails_2138']//*[name()='svg']
#${mail_box}    //p[normalize-space()='Hi Ragul S,']
#${mail_box}    //div[contains(text(),'Rich Text Editor, main')]
${mail_box}    //div[@aria-label='Rich Text Editor, main']
${preview x_btn}    //button[@id='Email_Details_Preview_close']
${email x_btn}    //span[@aria-hidden='true']

#Edit Verified Elements
${edit_icon}    //tbody/tr[2]/td[3]/app-edit-profile[1]/span[1]//*[name()='svg']
${edit_cancel}    //button[normalize-space()='Cancel']
${text_area}    //textarea[@id='firstName']

#Note Verified Elements
${note_icon}    //span[@id='lead_notes_354']//*[name()='svg']
${click_note}    //button[@id='investor_notepop_writeanote']
${write_note}    //textarea[@placeholder='Write a note here']
${write_cancel}    //button[@id='investor_notepop_cancel']
${note x_btn}    //button[@aria-label='Close']

#Lead User Name 
${rahul_shan}    //td[normalize-space()='Ragul Shanmugam']
${act_scrl}    //li[@id='investor_insprodet_activity']
${investment}    //a[@id='investments-tab']
${add_invest}    //button[@id='investment_addInvestment']
${offer_drpdwn}    //select[@id='investment_addInvestmentshow_aif_offeringname']
${invest_amt}    //input[@id='investment_addInvestmentshow_aif_investmentamount']
${profile_type}    //select[@id='investment_addInvestmentshow_aif_profiletype']
${profile_status}    //select[@id='investment_addInvestmentshow_aif_status']
${funcrecd}    //input[@id='investment_addInvestmentshow_aif_funcrecd']
${doc_sign}              //input[@id='investment_addInvestmentshow_aif_docssigned']
${add_x_btn}    //button[@aria-label='Close']


