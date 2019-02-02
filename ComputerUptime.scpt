try

    set AppleScript's text item delimiters to " "

    --message, space after " is intentional
    set TIMINGC to " If the Uptime Exceeds 12:00 (12 Hours), Restart your MacBook."

    --uptime
    set uptime to do shell script "uptime"


    --Selects 1st line of command line which contains Uptime
    set FullUptimeDialog to paragraph 1 of uptime


    set TEXT4 to text item 4 of FullUptimeDialog
    set TEXT5 to text item 5 of FullUptimeDialog
    set TEXT6 to text item 6 of FullUptimeDialog
    set TEXT7 to text item 7 of FullUptimeDialog


    --Displays Uptime (Days, Hours XX:XX, Users & Message)
    display dialog "Uptime: " & TEXT4 & TEXT5 & TEXT6 & TEXT7 & TIMINGC with icon ":System:Library:CoreServices:CoreTypes.bundle:Contents:Resources:Clock.icns" as alias buttons {"Okay"}

end try
