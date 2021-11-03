#! /bin/bash
# appcenter-post-clone.sh
echo "appcenter-post-clone.sh Begin"
echo "ls -R -l $AGENT_HOMEDIRECTORY"
ls -R -l $AGENT_HOMEDIRECTORY
#echo "ls -R -l $AGENT_TOOLSDIRECTORY"
#ls -R -l $AGENT_TOOLSDIRECTORY
echo "find /$AGENT_HOMEDIRECTORY -name xamarinandroid.ts -exec cat {} +"
find / -name xamarinandroid.ts -exec cat {} +
echo "appcenter-post-clone.sh End"