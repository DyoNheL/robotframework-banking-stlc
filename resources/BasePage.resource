*** Settings ***
Library     SeleniumLibrary
Library     ../library/WebDriverLibrary.py
Resource    ../variables/global_variables.robot


*** Keywords ***
Open Browser To Login Page
    Open Chrome Browser    ${BASE_URL}

Close Browser Session
    Close Browser
