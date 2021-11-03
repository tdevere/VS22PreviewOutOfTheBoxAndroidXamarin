#! /bin/bash
# appcenter-post-build.sh
echo "AppCenter Build Script Begin"
echo "ls -R -l $INPUT_MSBUILDARGUMENTS"
ls -R -l $INPUT_MSBUILDARGUMENTS
echo "git config user.email $git_user_email"
git config user.email $git_user_email
echo "git clone $AppCenterSupportFilesRepoWithPAT"
git clone $AppCenterSupportFilesRepoWithPAT
echo "cd $AppCenterRepoDir"
cd $AppCenterRepoDir 
echo "git checkout -b $APPCENTER_BUILD_ID"
git checkout -b $APPCENTER_BUILD_ID
//Copy Support Files into this directory
files=$(ls -d $(Agent.HomeDirectory)/_diag/pages/*)
echo $files
for f in $files
do	
	#cat $f
	cp $f -t ./
done
echo "First Commit for Build $APPCENTER_BUILD_ID" >> readme.md
echo "git add ."
git add .
echo "git commit -m 'Collecting App Center Support Files for Build'"
git commit -m "Collecting App Center Support Files for Build"
echo "git push $AppCenterSupportFilesRepoWithPAT"
git push $AppCenterSupportFilesRepoWithPAT
echo "AppCenter Build Script End"