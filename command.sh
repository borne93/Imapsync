#!/bin/bash


for((i = 0; i > -1; i++)); 
do
if [[ -z $ZIELHOST ]] && [[ -z $ZIELUSER ]] && [[ -z $ZIELPASS ]]
then
   echo ""
else
if [[ -z $HOST5 ]] && [[ -z $USER5 ]] && [[ -z $PASS5 ]]
then
   echo ""
else
  ./imapsync --host1 $HOST5 --user1 $USER5 --password1 $PASS5 --host2 $ZIELHOST --user2 $ZIELUSER --password2 $ZIELPASS --folder INBOX --folder Inbox --delete1 --no-modulesversion --noreleasecheck --nolog --nofoldersizesatend --nofoldersizes --nocheckfoldersexist --nocheckselectable --ssl1 --ssl2 --skipemptyfolders 
fi

  if [[ -z $HOST4 ]] && [[ -z $USER4 ]] && [[ -z $PASS4 ]]
then
   echo ""
else
  ./imapsync --host1 $HOST4 --user1 $USER4 --password1 $PASS4 --host2 $ZIELHOST --user2 $ZIELUSER --password2 $ZIELPASS --folder INBOX --folder Inbox --delete1 --no-modulesversion --noreleasecheck --nolog --nofoldersizesatend --nofoldersizes --nocheckfoldersexist --nocheckselectable --ssl1 --ssl2 --skipemptyfolders
fi

if [[ -z $10 ]] && [[ -z $USER3 ]] && [[ -z $PASS3 ]]
then
  echo ""
else
  ./imapsync --host1 $10 --user1 $USER3 --password1 $PASS3 --host2 $ZIELHOST --user2 $ZIELUSER --password2 $ZIELPASS --folder INBOX --folder Inbox --delete1 --no-modulesversion --noreleasecheck --nolog --nofoldersizesatend --nofoldersizes --nocheckfoldersexist --nocheckselectable --ssl1 --ssl2 --skipemptyfolders
fi

if [[ -z $HOST2 ]] && [[ -z $USER2 ]] && [[ -z $PASS2 ]]
then
   echo ""
else
  ./imapsync --host1 $HOST2 --user1 $USER2 --password1 $PASS2 --host2 $ZIELHOST --user2 $ZIELUSER --password2 $ZIELPASS --folder INBOX --folder Inbox --delete1 --no-modulesversion --noreleasecheck --nolog --nofoldersizesatend --nofoldersizes --nocheckfoldersexist --nocheckselectable --ssl1 --ssl2 --skipemptyfolders
fi

if [[ -z $HOST1 ]] && [[ -z $USER1 ]] && [[ -z $PASS1 ]]
then
  echo ""
else
  ./imapsync --host1 $HOST1 --user1 $USER1 --password1 $PASS1 --host2 $ZIELHOST --user2 $ZIELUSER --password2 $ZIELPASS --folder INBOX --folder Inbox --delete1 --no-modulesversion --noreleasecheck --nolog --nofoldersizesatend --nofoldersizes --nocheckfoldersexist --nocheckselectable --ssl1 --ssl2 --skipemptyfolders
fi
fi
done