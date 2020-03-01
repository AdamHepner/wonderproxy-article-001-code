*** Settings ***
Resource  pages/main_page.robot
Resource  pages/product_page.robot
Resource  pages/search_results.robot
Metadata  Environment  %{ENV}

*** Variables ***
${main page}  ${SUT.baseurl}/index.php

*** Test Cases ***
Search and verify result breadcrumb
	Open web page ${main page}
	main_page.Search for "dress"
	search_results.Remember title of search result item number 1
	search_results.Open search result number 1
	product_page.Verify that a product page is now open
	product_page.Verify that the breadcrumb contains the same product name as the title of search result number 1

*** Keywords ***
Open web page ${url}
	[Tags]  not yet ready
	Log  ${url}
  