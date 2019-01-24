#!/bin/bash
#Check if this is a Lambda School project
echo "Is this a Lambda School project? (y/N):"
read lsproject

if [ $lsproject == 'y' ]; then
    echo
    echo "Please enter your full name (firstname-lastname):"
    read fullname
    echo
    echo "***Setup GIT repository for Lambda School project"
    echo
    git checkout -b $fullname
    echo "*** $fullname branch created ***"
    echo "*** Create starting dev branch ***"
    git checkout -b dev
    cp ~/devtools/git-tools/post-commit-lambdaschool .git/hooks/post-commit 
    cp ~/devtools/git-tools/post-merge-lambdaschool .git/hooks/post-merge
    echo
    echo "***Lambda School COMMIT and MERGE scripts copied***"
    echo
    echo "***Adding branch: "$ls_branch" to the git hook scripts"
    echo
    echo 'ls_branch='$fullname'\n'"$(cat .git/hooks/post-commit)" > .git/hooks/post-commit
    echo 'ls_branch='$fullname'\n'"$(cat .git/hooks/post-merge)" > .git/hooks/post-merge 
    echo 
    cp ~/devtools/git-tools/gitignore-default .gitignore
    echo "*** Copied default .gitignore file ***"
    echo
else
    echo
    echo "***Set GIT repository for standard project***"
    echo
    echo "*** Create starting dev branch ***"
    git checkout -b dev    
    cp ~/devtools/git-tools/post-commit .git/hooks/post-commit 
    cp ~/devtools/git-tools/post-merge .git/hooks/post-merge
    echo
    echo "***COMMIT and MERGE scripts copied***"
    echo 
    cp ~/devtools/git-tools/gitignore-default .gitignore
    echo "*** Copied default .gitignore file ***"
    echo    
fi
