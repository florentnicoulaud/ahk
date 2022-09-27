import os
import time

command = 'SetUserFTA ' + os.path.expanduser('~') + '\\file-associations.conf'
while True:
	os.system(command)
	time.sleep(3600)
