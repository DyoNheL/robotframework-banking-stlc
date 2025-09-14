*** Settings ***
Library     SeleniumLibrary
Resource    Common.resource


*** Variables ***
${CUSTOMER_LOGIN_BTN}       xpath=//button[contains(text(),'Customer Login')]
${MANAGER_LOGIN_BTN}        xpath=//button[contains(text(),'Bank Manager Login')]


*** Keywords ***
Click Customer Login
    Click When Visible    ${CUSTOMER_LOGIN_BTN}

Click Manager Login
    Click When Visible    ${MANAGER_LOGIN_BTN}
