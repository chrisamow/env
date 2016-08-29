import os, time
import datetime
import time

#will list all files in the current directoy that have the same mod date (excluding time) as passed in file
#for testing purposes, cp -p will preserve the dates of the original file

#todo: change this to use first parameter passed in
file = 'ss.jpeg'
(mode, ino, dev, nlink, uid, gid, size, atime, mtime, ctime) = os.stat(file)
#note that ctime is NOT creation date (doesnt exist, not req by posix)
#it is inode change - which includes permissions, etc
#time.ctime(mtime)
mypath='.'
onlyfiles = [ f for f in os.listdir(mypath) if os.path.isfile(os.path.join(mypath,f)) ]
d = datetime.date.fromtimestamp(mtime)
filessamedate = [ ]
for filetoread in onlyfiles:
    (mode2, ino2, dev2, nlink2, uid2, gid2, size2, atime2, mtime2, ctime2) = os.stat(filetoread)
    d2 = datetime.date.fromtimestamp(mtime2)
    if d == d2:
        filessamedate.append(filetoread)
filessamedate

