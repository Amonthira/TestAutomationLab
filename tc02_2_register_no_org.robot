*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
TC02_2 Empty First Name
    [Documentation]    Leave First Name empty, system should show error message

    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    2s

    # ไม่กรอก First Name
    Input Text    id=lastname        Sodyod
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           091-001-1234

    Click Button    id=registerButton
    Sleep    2s

    # Expected Result: แสดงข้อความแจ้งเตือน
    Page Should Contain    Please enter your first name

    Close Browser




