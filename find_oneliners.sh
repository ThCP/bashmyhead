# Find oneliners

# Find all files in the system named “core”; try to avoid visualizing errors on 
# the screen (put errors in a log file);
find / -name "core" 2> errors.log

# Find all the files whose name contains the string “conf” and show its size;
find / -name "conf" -printf "%p %s\n"

# Find all files of the bin user, which are in the /usr directory (and all its 
# subdirectories) and whose permissions are: –r-xr-xr-x;
find /usr -perm /u=rx,g=rx,o=rx

# Find all files of yours that have been seen from less than a week.
find /home/riccardo -atime -7

# Find all the directories of your home whose name ends with the string “backup” 
find /home/riccardo/ -path "*backup" | xargs mv -t folder_backups

# Find all files in the system that are greater than 2Mbyte or whose name begins 
# with “a” and finishes with “o”.
find / -size +2M -or -name "a.*o"

# Find all executable files in the current directory, except the crossable 
# directories then copy them to the bin folder in the current directory. The
# bin folder must already be present. 
find  . -maxdepth 1 -executable -not -type d -exec cp -t ./bin/ \{} \;

