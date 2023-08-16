*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/appDietPages.robot
Variables         ../Resources/appDietLocator.yaml
Suite Setup       Start Session Apps
Suite Teardown    Close Apps

*** Test Cases ***
As a user i want to open Diet apps
    Sleep                       5s         # Add 's' for seconds
    Page should contain Text    Welcome

As a user i want to input my data
    User Input Welcome Data
    User Tap Next Button