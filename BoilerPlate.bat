set arg1=%1
set arg2=%2

if not "%arg1%"=="-npm" (
    call npm i
)

call node KCode\Backend.js

call node KCode\Database.js

if not "%arg2%"=="-sampledata" (
    call node KCode\ForDatabase\ForSample\EntryFile.js
)
