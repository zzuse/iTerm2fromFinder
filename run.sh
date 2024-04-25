result=`osascript terminalcommandhere.applescript "{query}"`

function iterm () {
    local cmd=""
    local wd="$PWD"
    local args="$@"

    if [ -d "$1" ]; then
        wd=$(cd "$1"; pwd)
        args="${@:2}"
    fi

    if [ -n "$args" ]; then
        # echo $args
        cmd="$args"
    fi

osascript <<EOF
tell application "iTerm"
	activate
	set new_window to (create window with default profile)
	set cSession to current session of new_window
	tell new_window
		tell cSession
			delay 1
			write text "cd '$wd';$cmd"
			delay 2
			repeat
				delay 0.1
				--          display dialog cSession is at shell prompt
				set isdone to is at shell prompt
				if isdone then exit repeat
			end repeat
		end tell
	end tell
end tell
EOF
}
iterm $result