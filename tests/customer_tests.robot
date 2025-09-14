*** Settings ***
Resource            ../resources/BasePage.resource
Resource            ../resources/LoginPage.resource
Resource            ../resources/CustomerPage.resource
Resource            ../variables/global_variables.robot

Test Setup          Open Browser To Login Page
Test Teardown       Close Browser Session


*** Test Cases ***
TC_CUST_001 Verify Customer Login
    [Tags]    customer    smoke
    Click Customer Login
    Login As Customer    ${CUSTOMER_NAME}
    Page Should Contain Element    ${LOGOUT_BTN}

TC_CUST_002 Verify Deposit Amount
    [Tags]    customer    regression
    Click Customer Login
    Login As Customer    ${CUSTOMER_NAME}
    Deposit Amount    ${CUSTOMER_DEPOSIT_AMOUNT}
    Balance Should Be    5596

TC_CUST_003 Verify Withdraw Amount
    [Tags]    customer    regression
    Click Customer Login
    Login As Customer    ${CUSTOMER_NAME}
    Withdraw Amount    ${CUSTOMER_WITHDRAW_AMOUNT}
    Balance Should Be    4896

TC_CUST_004 Verify Transactions View
    [Tags]    customer    regression
    Click Customer Login
    Login As Customer    ${CUSTOMER_NAME}
    View Transactions
    Page Should Contain    Transaction Type

TC_CUST_005 Verify Logout
    [Tags]    customer    smoke
    Click Customer Login
    Login As Customer    ${CUSTOMER_NAME}
    Logout Customer
    Page Should Contain Element    ${USER_DROPDOWN}
