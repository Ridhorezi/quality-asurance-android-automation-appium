*** Settings ***
Library      AppiumLibrary
Variables    ../Resources/appDietLocator.yaml

*** Keywords ***
Start Session Apps
    Set Appium Timeout    10s
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=UiAutomator2
    ...                   platformName=Android
    ...                   deviceName=Redmi A1
    ...                   appPackage=com.fghilmany.dietmealapp
    ...                   appActivity=com.fghilmany.dietmealapp.ui.main.MainActivity
    ...                   autoGrantPermissions=true
    ...                   noReset=true
    Sleep                 1

User Input Welcome Data
    Input Text    ${homePageNameField}           Ridho Suhaebi Arrowi
    Input Text    ${homePageWeightField}         65
    Input Text    ${homePageHeightField}         179
    Tap           ${homePageGenderMaleButton}    

User Tap Next Button
    Tap    ${homePageNextButton}

Close Session Apps
    Capture Page Screenshot
    Close Application          noReset=true

Close Apps
    Capture Page Screenshot
    Close Application
