# iTerm2fromFinder
Alfred workflow which launch iTerm2 and change dir to the window Finder working on. Also execute commands.

# Motivation

I was using Terminal to open Finder working on directory.  

But since I am using iTerm2 a lot, I decided to search on the internet about launch iTerm2 and 'cd $DIR' function script. I tried a lot, but none of them working perfect match my usecase.  

Also the iTerm2 officially anounce support python3 for launch iTerm2 in newly versions, but that depends on installing AppKit which I met a lot of errors.  

I prefer old ways. So I tried using Applescript and Bash to do that work, cause for me it is simple.

# Installation
Just clone this repo or download the alfredworkflow file, then double click the alfredworkflow file. Right now I am tested on Alfred 5.

# Explained
I want adding more details about source code.  
The workflow is a binary like file.  
This workflow is triggered by hotkey or keywords. After trigger there is a Bash script to execute, which include:
1.  Using applescript to get Finder APP working directory, return the result to step 2.
2.  Launch iTerm2 window. This is done by another Applescript embeded in the run.sh.
3.  Execute command inside iTerm2.
    -   Change directory to the Step 1 result.
    -   If triggered by keywords there should be arguments which is a command want to be executed.
4.  Done.  

Please refer to run.sh and terminalcommandhere.applescript which I exported from my workflow.  

# References
```bash
References:
    iTerm AppleScript Examples:
    https://gitlab.com/gnachman/iterm2/wikis/Applescript

Credit:
    Franz Heidl  -- www.franzheidl.de -- Alfred workflow runterminalcommandhere
    Open iTerm2 and Execute -- https://gist.github.com/vyder/96891b93f515cb4ac559e9132e1c908
    https://gist.github.com/geyang/a495a5ea8e6fdd2f79f8e874616ea182
```
# Questions?
If there are problems, please open issues. I will look at when I have time. Thanks and enjoy!
