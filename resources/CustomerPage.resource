*** Settings ***
Library     SeleniumLibrary

Resource    Common.resource

*** Variables ***
${USER_DROPDOWN}        xpath=//select[@id='userSelect']
${LOGIN_BTN}            xpath=//button[text()='Login']
${LOGOUT_BTN}           xpath=//button[text()='Logout']
${DEPOSIT_TAB}          xpath=//button[contains(text(),'Deposit')]
${WITHDRAW_TAB}         xpath=//button[contains(text(),'Withdrawl')]
${AMOUNT_INPUT}         xpath=//input[@ng-model='amount']
${DEPOSIT_INPUT}        xpath=//input[@ng-model='amount']
${SUBMIT_BTN}           xpath=//button[@type='submit']
${TRANSACTIONS_TAB}     xpath=//button[contains(text(),'Transactions')]
${TRANSACTION_ROWS}     xpath=//table/tbody/tr
${BALANCE_LABEL}        xpath=//strong[2]


*** Keywords ***
Login As Customer
    [Arguments]    ${customer_name}      
    Wait Until Dropdown is Visible    ${USER_DROPDOWN}     ${customer_name}
    Click Button    ${LOGIN_BTN}

Logout Customer
    Click When Visible    ${LOGOUT_BTN}

Deposit Amount
    [Arguments]    ${customer_deposit_amount}
    Click When Visible    ${DEPOSIT_TAB} 
    Input Text When Visible    ${AMOUNT_INPUT}    ${customer_deposit_amount}   
    Click Button    ${SUBMIT_BTN}

Withdraw Amount
    [Arguments]    ${customer_withdraw_amount}
    Click When Visible       ${WITHDRAW_TAB}
    Input Text When Visible    ${AMOUNT_INPUT}    ${customer_withdraw_amount}
    Click When Visible    ${SUBMIT_BTN}

View Transactions
    Click When Visible    ${TRANSACTIONS_TAB}
    Wait Until Page Should Contain Element    ${TRANSACTION_ROWS}

Balance Should Be
    [Arguments]    ${expected}
    ${balance}    Get Text    ${BALANCE_LABEL}
    Should Contain    ${balance}    ${expected}
