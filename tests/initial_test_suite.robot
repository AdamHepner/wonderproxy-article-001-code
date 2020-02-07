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
	search_results.Remember title of 1. search result item
	search_results.Open 1. search result
	product_page.Verify that a product page is now open
	product_page.Verify that the breadcrumb contains the same name as the 1. search result title

*** Keywords ***
Open web page ${url}
	[Tags]  not yet ready
	Log  ${url}
  