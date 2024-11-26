# bulk-renamer
File and folder organizer, removes prefixes and renames them with their own directories

Use case:
Batch Process ZIP Files and Rename Extracted Directories

Purpose:

This script is designed to automate the handling of multiple .zip files within a directory. It performs the following tasks in sequence:
1. Unzip Files:
     Extracts the contents of each .zip file into a new directory.

3. Rename Directories:
    Processes all directories to remove any prefix up to the last underscore (_), leaving only the suffix as the new directory name.

4. Cleanup:
     Deletes the original .zip files and any associated metadata files (e.g., Zone.Identifier).

**The workflow that inspired it:**
I download zip files that have day-specific prefixes like:

``day_05-Random-Word_01-This-Should-Match_04-Deez-Nubs.zip``

``day_05-Deep-Learning_02-What-Is-It_04-Why-Did-I-Have-To-Do-This-Manually.zip``


So when I run the script it just returns:

``01-This-Should-Match_04-Deez-Nubs.zip``

``02-What-Is-It_04-Why-Did-I-Have-To-Do-This-Manually.zip``


Customize it the way you want, I just used regex to match up to the last underscore.

Run the script with ``./lw_bulk_file_renamer.zsh`` if you're using zsh, otherwise just rename the file.

If you want to run it globally set an alias in your shell file. I just append
``alias lewrenamfiles='/where/you/saved/my/script/lol/lw_bulk_file_renamer.zsh'`` to .zshrc

-- <3 Asia
