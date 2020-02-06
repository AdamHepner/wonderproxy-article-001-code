*** Test Cases ***
Search and verify result breadcrumb
	Open web page http://automationpractice.com/index.php
	Search for "dress"
	Remember title of 1st search result item
	Open 1st search
	Verify that a product page is now open
	Verify that the breadcrumb contains the same name as the 1st search result title