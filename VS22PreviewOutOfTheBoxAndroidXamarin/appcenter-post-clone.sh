#! /bin/bash
# appcenter-post-clone.sh
echo "appcenter-post-clone.sh Begin"

fileslst=$(ls -d ~/$AGENT_HOMEDIRECTORY/_diag/pages/*)
echo $fileslst

#cat *.* /Users/runner/runners/2.194.0

	

#ls -R -l /Users/runner/runners/2.194.0/_diag/pages
#find /Users/runner/runners/2.194.0/_diag/pages -name *.log -exec cat {} +
#cat *.log /Users/runner/runners/2.194.0/_diag
#cat *.* /Users/runner/runners/2.194.0/scripts


#echo "ls -R -l $AGENT_HOMEDIRECTORY"
#ls -R -l $AGENT_HOMEDIRECTORY
#echo "ls -R -l $AGENT_TOOLSDIRECTORY"
#ls -R -l $AGENT_TOOLSDIRECTORY
#echo "find /$AGENT_HOMEDIRECTORY -name xamarinandroid.ts -exec cat {} +"
#find / -name xamarinandroid.ts -exec cat {} +
echo "appcenter-post-clone.sh End"