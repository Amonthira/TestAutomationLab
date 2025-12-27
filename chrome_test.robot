*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file://${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
Register Success
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    2s

    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           091-001-1234

    Click Button    id=registerButton
    Sleep    3s

    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.

    Close Browser

