# UPDATE
### This has been deprecated, as this functionality [is possible natively in IINA](https://twitter.com/lhc70000/status/1010360204158894081) (which offers several improvements over this approach). This repository is archived for reference and learning purposes, only.

# Wadsworth for IINA 
### Jump around the timeline using keyboard shortcuts

[Forked from Wadsworth for VLC](https://github.com/verbiate/Wadsworth-for-VLC)

On YouTube, pressing 0-9 will jump you to a percentage of the timeline (e.g. pressing 3 will jump to 30% of the way through the video). In an effort to recreate this functionality, this is a set of scripts that enable jumping to a specific percentage location of the timeline in the [IINA video player for macOS](https://github.com/lhc70000/iina). You can use other tools (like System Preferences or Alfred) to assign keyboard shortcuts to each script and thereby replicate this functionality. An AppleScript is also included to create these shortcuts for you in System Preferences.

### INSTALLATION STEPS:
The easiest way to install is to use the included Automator Services to bring this functionality to IINA, and then use the keyboard shortcut AppleScript to automatically add keyboard shortcuts in System Preferences. Alternatively, there are also AppleScripts available that perform the same functions as the Automator Services, should you have a use for them.

## 1. Install the Automator Services

**INSTRUCTIONS:**
1. Copy the Automator scripts from [here](https://github.com/verbiate/Wadsworth-for-IINA/tree/master/01%20Automator%20scripts) into the user's Library > Services folder (~/Library/Services)
2. Double click on one of the newly copied Automator scripts (this causes the scripts to appear in the Services menu)
3. The scripts can now be found inside the IINA > Services menu

**KNOWN ISSUES:**
* In order to jump to a new point on the timeline, IINA requires that the mouse cursor moves over the playback window to make the playhead visible. This script works around this by moving the mouse cursor over the window for a split second. If a user is moving their mouse while triggering the shortcut, it's possible for the mouse to miss the window. This will cause a spike in CPU usage until the mouse cursor enters the playback window.

## 2. Create Keyboard Shortcuts
_This is an AppleScript which creates keyboard shortcuts. This is not required—you can choose to create your own keyboard shortcuts, or none at all (?), but this creates them for you automatically._

**INSTRUCTIONS:**
1. Run the Create Keyboard Shortcuts AppleScript
2. The script will ask you to grant Script Editor [permissions to Assistive Services](https://developer.apple.com/library/content/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/AutomatetheUserInterface.html#//apple_ref/doc/uid/TP40016239-CH69-SW1)
3. After granting permissions in System Preferences > Security & Privacy > Privacy > Accessibility, run the script again
4. The script will now create shortcuts for stops on the timeline from 0-90%
5. After this, you can now jump to any point of the timeline by pressing Command+Option and a number (e.g. 3 for 30%)
