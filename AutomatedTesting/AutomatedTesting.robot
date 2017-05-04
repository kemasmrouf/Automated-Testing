*** Settings ***
Library           Selenium2Library
Library           DateTime
Resource          Resource.txt
Library           AutoItLibrary

*** Test Cases ***
TC1
    Open Browser    https://www.tokopedia.com/contact-us#step1    ff
    Click Element    xpath=//div[@id='problem-list-c1']/a
    Sleep    2s
    Click Element    xpath=//div[@id='solution-list-c1']/a[6]
    Sleep    2s
    Click Element    xpath=//div[@id='step6']/div[3]/a[2]
    Sleep    2s
    Input Text    xpath=//*[@id='ticket_reply_msg']    ${DETAIL MASALAH}
    Input Text    xpath=//*[@id='full_name']    ${NAMA}
    Input Text    xpath=//*[@id='user_email']    ${EMAIL}
    Click Element    xpath=//*[@id='pickfiles-nav1']
    Choose File    xpath=//input[@type='file']    ${CURDIR}${/}image.jpg
    Run    ${AUTOIT}
