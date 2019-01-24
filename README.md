# Git Tools
*Version 0.3.0*

## Description
Git Tools is a collection of [Git hook scripts](https://githooks.com/) and configuration files designed to streamline and automate the setup, configuration, and Git workflow in projects.

## Tools
  * [gitsetup](#gitsetup)
  * [gitconfig](#gitconfig)
  * [post-commit](#post-commit)
  * [post-merge](#post-merge)

## Instructions
  1. Clone the repository unto your local machine.
  2. Add path to environment variables (to globally execute the scripts). [*First time use only*]
  3. Go to your project directory
  4. Run `gitsetup` and follow the prompts.

---
## Details
### gitsetup <a name="gitsetup"></a>
A script which checks for and initializes a git repository in the current directory.


---
### gitconfig <a name="gitconfig"></a>
A script which configures the project git settings by executing the tasks:
  * Creates a **dev** branch.
  * Creates a **firstname-lastname** branch (*for Lambda School projects*).
  * Copies predefined **post-commit** and **post-merge** script files into the git hooks directory.
  * Copies predefined **.gitignore** file into the project directory.


### post-commit <a name="post-commit"></a>
A predefined [git hook](https://githooks.com/) script which automatically runs a `git push` command after a `commit` has been posted in a specified branch.


---
### post-merge <a name="post-merge"></a>
A predefined [git hook](https://githooks.com/) script which automatically runs a `git push` command after a `merge` has been posted in a specified branch. 
