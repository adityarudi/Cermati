*** Settings ***
Documentation     Cermati Register Flow
Library           Selenium2Library
Library           OperatingSystem


*** Variables ***
#Your Browser
${Browser}         Chrome
#Testing URL
${SiteUrl}           https://www.cermati.com/gabung
#WebElement
${Email}             email
${Password}          password
${ConfirmPassword}   confirmPassword
${FirstName}         firstName
${LastName}          lastName
${PhoneNumber}       mobilePhone
${City}              cityAndProvince
${CityOption}        //div[6]/div[2]/div/button 
#//*[contains(text(),'KOTA JAKARTA PUSAT')]
${SubmitButton}      //div[@id='safe-area']/div[2]/div[2]/div/button/p

*** Keywords ***
Open page
   Open Browser         ${SiteUrl}      ${Browser}
   Maximize Browser Window
   Sleep          2s              

Fill email
   Input Text            id=${Email}                  testing@gmail.com                    #should use the valid email 
   Sleep          1s 

Fill phone number 
   Input Text            id=${PhoneNumber}            085774460445                    #should use the valid phone number
   Sleep          1s

Fill password
   Input Password        id=${Password}               Testing1234$$$                       
   Sleep          1s

Fill confirm password
   Input Password        id=${ConfirmPassword}        Testing1234$$$
      Sleep          1s

Fill first name
   Input Text            id=${FirstName}              Testing
      Sleep          1s

Fill last name
   Input Text            id=${LastName}               Account
      Sleep          1s


Fill city
   Input Text            id=${City}                   Jakarta
   Sleep          2s

Click city option 
   Click Element         ${CityOption}

Click Submit 
   Click Element         ${SubmitButton}

*** Test Cases ***
cermati Registration Flow
   Open Page
   Fill email 
   Fill phone number 
   Fill password
   Fill confirm password
   Fill first name
   Fill last name
   Fill city
   Click city option 
   Click Submit 

#test master push test