*** Settings ***
Resource    ../Resources/Essential.robot
Variables    ../Resources/Locators.py




*** Variables ***
${Browser}      chrome
${Url}          https://www.power.fi/
${test_result_dir}
${nameCategory}
${ProductURL}
${ProductID}
${current_url}


*** Keywords ***
Open and Setup Enviroment
    open browser    ${Url}    ${Browser}
    maximize browser window
    register keyword to run on failure    Failure Setup
    Accept Cookies




Accept Cookies
    click element when visible    ${AcceptCookies}

Failure Setup
    Get Location And Log
    Setup Test Output
    Excel Report Setup