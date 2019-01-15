if git rev-parse --git-dir > /dev/null 2>&1; then
  : # This is a valid git repository (but the current working
    # directory may not be the top level.
    # Check the output of the git rev-parse command if you care)
    echo
    echo "***Creating post COMMIT and MERGE scripts***"
    echo
    sh ~/devtools/git-tools/gitconfig.sh
else
  : # this is not a git repository
  echo
  echo "***Initialize GIT repository***"
  echo
  git init 
  echo
  echo "***Creating post COMMIT and MERGE scripts***"
  echo
  sh ~/devtools/git-tools/gitconfig.sh
fi