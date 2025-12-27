*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
TC02_4 Empty First Name and Last Name
    [Documentation]    Leave First Name and Last Name empty, system should show error message

    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    2s

    # ไม่กรอก First Name และ Last Name
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           091-001-1234

    Click Button    id=registerButton
    Sleep    2s

    # Expected Result: แสดงข้อความแจ้งเตือน (อย่างน้อย First Name)
    Page Should Contain    Please enter your first name

    Close Browser

