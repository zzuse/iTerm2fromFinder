on run theQuery
	
	tell application "Finder"
		
		try
			set targetFolder to (folder of front window as alias)
		on error
			set targetFolder to (path to desktop folder)
		end try
		
		set targetPath to quoted form of (the POSIX path of targetFolder)
		
		set theCommand to "cd " & targetPath
		
	end tell
	
end run