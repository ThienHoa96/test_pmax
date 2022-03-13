*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${search_text}    //*[@id="twotabsearchtextbox"]
${search_btn}    //*[@id="nav-search-submit-button"]
${chair}    //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[2]/div[2]/h2/a/span
${add_cart_btn}    //*[@id="add-to-cart-button"]
${quantity}    //*[@id="sc-item-e231da4c-45e1-4ba7-9bc8-c387ebd8a402"]/div[3]/div[5]/div[1]/span/span/span[1]/span/span/span/span

*** Test Cases ***
Test Scenario 2
    [Tags]    DEBUG
    Open Browser     https://www.amazon.com    chrome
    Maximize Browser Window
    Sleep    2
    Input text    ${search_text}     chair
    Click Button    ${search_btn}
    Click Element    ${chair}
    SeleniumLibrary.Select From List By Label     quantity_0    5
#    Get Selected List Labels     //*[@id="quantity_4"]
    Click Button    ${add_cart_btn}

#    SeleniumLibrary.Select From List By Label     quantity_0    5
    Close Browser