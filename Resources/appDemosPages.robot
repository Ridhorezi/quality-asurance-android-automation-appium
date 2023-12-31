*** Settings ***
Library      AppiumLibrary
Variables    ../Resources/appDemosLocator.yaml

*** Keywords ***
Start Session Apps
    Set Appium Timeout    10s
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=UiAutomator2
    ...                   platformName=Android
    ...                   deviceName=Redmi A1
    ...                   appPackage=io.appium.android.apis
    ...                   appActivity=io.appium.android.apis.ApiDemos
    ...                   autoGrantPermissions=true
    ...                   noReset=true
    Sleep                 1

Tap Accessibility
    Tap    ${accessibility}

Tap Accessibility Node Provider
    Tap    ${accessibility_node_provider}

Close Session Apps
    Capture Page Screenshot
    Close Application          noReset=true

Close Apps
    Capture Page Screenshot
    Close Application
