*** Keywords ***
Remember title of ${number:\d+}. search result item
	[Tags]  not yet ready
	[Documentation]  Extract a value from the webpage and make it available in the remainder of the test
	Log  ${number}

Open ${number:\d+}. search result
	[Tags]  not yet ready
	Log  ${number}