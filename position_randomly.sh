osascript << EOF
tell application "System Events"
    set desktopFolder to folder "Desktop" of home
    set desktopItems to every item of desktopFolder
    
    set screenWidth to 1920 -- Adjust for your screen resolution
    set screenHeight to 1080 -- Adjust for your screen resolution
    
    repeat with i from 1 to count desktopItems
        set itemPosition to {random number from 0 to (screenWidth - 100), random number from 0 to (screenHeight - 100)}
        set position of item i of desktopItems to itemPosition
    end repeat
end tell
EOF