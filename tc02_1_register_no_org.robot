*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file://${EXECDIR}/StarterFiles/Registration.html
${BROWSER}    chrome

*** Test Cases ***
TC02 Register Success No Organization Info
    [Documentation]    Register success without organization information
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    1s

    Input Text    id=firstname    Somyod
    Input Text    id=lastname     Sodsai
    Input Text    id=email        somyod@kkumail.com
    Input Text    id=phone        091-001-1234

    Click Button    id=registerButton
    Sleep    2s

    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.

    Close Browser


