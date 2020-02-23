# Automated Screenshot Ripper
I made this after buying some manga from Bookwalker, only to find that they had DRM that no one had been able to crack. So I just went around the problem and made this script which screenshots every page in the book. Relies on the Windows 10 snipping tool and autohotkey. Though designed for the Bookwalker PC app, it should work with any other reader apps with a little tweaking.
## Prerequisites
- Install autohotkey, set the windows snipping tool (Win+Shift+s) to window capture, and save directory to the one you want.
 - Recommended: Change your background to a static background if you use a slideshow background and pause other CPU/hard drive intensive programs. Also set the save directory to a fast SSD rather than a slow HDD. Keeping these will increase the chance of dropping pages and breaking the loop.
 - Optional: Move the reader to the screen/monitor with the highest resolution (or increase it in settings) and increase the size of the reader window as much as possible. Putting the screen into portrait will allow the window to be even bigger. This will increase the size and quality of the resulting image. 
   - Note: the larger the image, the longer the delays, and the more likely you will have to edit the script timings.
## Usage
1. Edit line 22 to change how many times the loop runs for. The default is 10. This should be the number of pages you want to capture, and should be the number of pages in the book.
2. Run the script.
3. Minimize all windows besides the reader and click on the reader window.
4. Press 's' to set the window and initialize some variables.
   - Optional: Press 'o' to run the script once and make sure everything works. If things start to go wrong, such as the pop up beeing clicked on too early or the image is 0 bytes (because it isn't saved before the tool is closed), you will need to change the delays. It should capture a page and then move on to the next page (default is using left arrow key, change line 48 if you want something else). Remember to go back to the first page before running
5. Press 'r' to run the script, 'p' to pause/resume and 'q' to immediately terminate the script in case something goes catastrophically wrong and it tries to shut down your computer (because of Alt+F4, happened to me during development several times, very annoying.)

It should take around 30 minutes for a ~150 page book. This tool is not perfect and may drop pages from time to time, so you best check that it has the correct number of pages at the end and do a 'o' for the missing page. It is also recommended to use a bulk renamer with this script, I tried adding renaming to the script but it tended to mess up the timings.
