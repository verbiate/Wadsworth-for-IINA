tell application "System Events"
	tell application process "IINA"
		repeat while not (window 1 exists)
		end repeat
		
		-- Let's collect the window location so we can move the mouse to it later
		set windowPosition to the position of the front window
		log windowPosition's item 1
		log windowPosition's item 2
	end tell
end tell

-- Setting x and y to the IINA window's coordinates
set x to windowPosition's item 1
set y to windowPosition's item 2


-- Move the mouse to the window to activate the onscreen controls. Wish there was a more elegant way of doing this, as this technique is slow.
do shell script "
/usr/bin/python <<END
import sys
import time
from Quartz.CoreGraphics import *
def mouseEvent(type, posx, posy):
          theEvent = CGEventCreateMouseEvent(None, type, (posx,posy), kCGMouseButtonLeft)
          CGEventPost(kCGHIDEventTap, theEvent)
def mousemove(posx,posy):
          mouseEvent(kCGEventMouseMoved, posx,posy);
ourEvent = CGEventCreate(None);
currentpos=CGEventGetLocation(ourEvent);		# Save current mouse position
mousemove(int(" & x & "),int(" & y & "));		# Move mouse to window location
time.sleep(0.01);					# Delay to make the window notice
mousemove(int(currentpos.x),int(currentpos.y)); 	# Restore mouse position"


tell application "System Events"
	tell application process "IINA"
		
		-- Wait for the onscreen controller to exist
		repeat while not (value indicator 1 of slider 2 of window 1 exists)
		end repeat
		
		-- Jump to a location on the timeline as a percentage(!)
		set value of value indicator 1 of slider 2 of window 1 to 10
		
	end tell
end tell
