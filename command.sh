#!/bin/bash
for((i = 0; i > -1; i++)); do
./imapsync --host1 $HOST1 --user1 $USER1 --password1 $PASS1 --host2 $HOST2 --user2 $USER2 --password2 $PASS2 --folder INBOX --folder Inbox --delete1 --no-modulesversion --noreleasecheck --nolog --nofoldersizesatend --nofoldersizes --nocheckfoldersexist --nocheckselectable --ssl1 --ssl2 --skipemptyfolders
done