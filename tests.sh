#Regular tests
stack exec nomyx-server -- -t
TestsRet=$?

#This tests should make Nomyx die hard"
stack exec nomyx-server -- -t -l "Timeout type check"
KillTest=$?

if [ $TestsRet -eq 0 ]; then
   echo Nomyx tests: Success
   true
else
   echo Nomyx tests: Failure
   false
fi
