*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
TC02_5 Empty Email
    [Documentation]    Leave Email empty, system should show error message

    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    2s

    # กรอกข้อมูล (ไม่กรอก Email)
    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=phone           091-001-1234

    Click Button    id=registerButton
    Sleep    2s

    # Expected Result: แสดงข้อความแจ้งเตือน
    Page Should Contain    Please enter your email

    Close Browser

