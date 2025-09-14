*** Settings ***
Library     SeleniumLibrary
Resource    Common.resource


*** Variables ***
${ADD_CUSTOMER_BTN}         xpath=//button[contains(text(),'Add Customer')]
${OPEN_ACCOUNT_BTN}         xpath=//button[contains(text(),'Open Account')]
${CUSTOMERS_BTN}            xpath=//button[contains(text(),'Customers')]

${CUSTOMER_SELECT}          xpath=//select[@id='userSelect']
${CURRENCY_SELECT}          xpath=//select[@id='currency']
${PROCESS_BTN}              xpath=//button[text()='Process']

${FNAME_INPUT}              xpath=//input[@placeholder='First Name']
${LNAME_INPUT}              xpath=//input[@placeholder='Last Name']
${POSTCODE_INPUT}           xpath=//input[@placeholder='Post Code']
${SUBMIT_CUSTOMER}          xpath=//button[@type='submit']

${CUSTOMER_SEARCH}          xpath=//input[@placeholder='Search Customer']
${DELETE_CUSTOMER_BTN}      xpath=(//button[text()='Delete'])[1]


*** Keywords ***
Add New Customer
    [Arguments]    ${fname}    ${lname}    ${postcode}
    Click When Visible    ${ADD_CUSTOMER_BTN}
    Input Text When Visible    ${FNAME_INPUT}    ${fname}
    Input Text    ${LNAME_INPUT}    ${lname}
    Input Text    ${POSTCODE_INPUT}    ${postcode}
    Click Button    ${SUBMIT_CUSTOMER}
    Handle Alert    ACCEPT

Open New Account For Customer
    [Arguments]    ${customer}    ${currency}
    Click When Visible    ${OPEN_ACCOUNT_BTN}
    Wait Until Dropdown is Visible    ${CUSTOMER_SELECT}    ${customer}
    Wait Until Dropdown is Visible    ${CURRENCY_SELECT}    ${currency}
    Click Button    ${PROCESS_BTN}
    Handle Alert    ACCEPT

Search Customer
    [Arguments]    ${name}
    Click When Visible    ${CUSTOMERS_BTN}
    Input Text When Visible    ${CUSTOMER_SEARCH}    ${name}

Delete Customer
    Click When Visible    ${DELETE_CUSTOMER_BTN}
