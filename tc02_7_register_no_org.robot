*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
TC02_7 Invalid Phone Number
    [Documentation]    Enter invalid phone number, system should show error message

    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    2s

    # กรอกข้อมูล (Phone Number ไม่ถูกต้อง)
    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           1234

    Click Button    id=registerButton
    Sleep    2s

    # Expected Result: แสดงข้อความแจ้งเตือนกรอกเบอร์โทรไม่ถูกต้อง
    Page Should Contain    Please enter a valid phone number

    Close Browser

