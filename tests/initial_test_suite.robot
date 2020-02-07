*** Variables ***
${main page}  ${SUT.baseurl}/index.php

*** Test Cases ***
Search and verify result breadcrumb
	Open web page ${main page}
	Search for "dress"
	Remember title of 1. search result item
	Open 1. search result
	Verify that a product page is now open
	Verify that the breadcrumb contains the same name as the 1. search result title

*** Keywords ***
Open web page ${url}
	[Tags]  not yet ready
	Log  ${url}
  
Search for "${search term}"
	[Tags]  not yet ready
	Log  ${search term}
  
Remember title of ${number:\d+}. search result item
	[Tags]  not yet ready
	[Documentation]  Extract a value from the webpage and make it available in the remainder of the test
	Log  ${number}
  
Open ${number:\d+}. search result
	[Tags]  not yet ready
	Log  ${number}
  
Verify that the breadcrumb contains the same name as the ${number:\d+}. search result title
    [Tags]  not yet ready
    Log  ${number}

Verify that a product page is now open
	[Tags]  not yet ready
	No operation