*** Keywords ***
Remember title of search result item number ${number:\d+}
	[Tags]  not yet ready
	[Documentation]  Extract a value from the webpage and make it available in the remainder of the test
	Log  ${number}

Open search result number ${number:\d+}
	[Tags]  not yet ready
	Log  ${number}