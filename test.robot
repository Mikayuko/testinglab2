*** Settings ***
Library             SeleniumLibrary
Suite Setup         Open Browser     https://automationexercise.com/product_details/1
Suite Teardown      Close Browser
 
 
*** Variables ***
${USERNAME}        standard_user
${EMAIL}        test@gmail.com
${REVIEW}        It's very good product
 
 
*** Keywords ***
Input User Name
    [Arguments]        ${USERNAME}
    Input Text         //*[@id="name"]      ${USERNAME}
 
Input Email
    [Arguments]       ${EMAIL}
    Input Text        //*[@id="email"]         ${EMAIL}
 
Input Review
    [Arguments]     ${REVIEW}
    Input Text    //*[@id="review"]        ${REVIEW}
Click Submit Button
    Click Button      //*[@id="button-review"]
   
 
*** Test Cases ***
Test Valid Login
    Input User Name        ${USERNAME}
    Input Email         ${EMAIL}
    Input Review        ${REVIEW}
    Click Submit Button