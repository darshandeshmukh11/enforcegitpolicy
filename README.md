Finding percentage distribution of commits say Defects/Bug Fixes Vs. Feature Development Vs. Other Changes

## Assumptions/Preconditions - 
Your have already defined your git commit message policies with [git server hooks](https://git-scm.com/book/en/v2/Customizing-Git-An-Example-Git-Enforced-Policy)

e.g.
### For Defects your git commit message should be like - 

DE[defectid] - "[description of the fix applied]"

`DE1234 - "Fixed null pointer exception"`

### For Features your git commit message should be like -

US[userstoryid] - "[description of the feature added]"

`US1234 - "Added an ability to add an item to shopping cart"`

### For any other changes in codebase define some custom rule

SCMActivity - "[description of the change done]"

`SCMActivity - "Updated pom.xml"`

## Usage

Put `minecommitdata.sh` script in your root git repository root folder

`$ cd in to your git repository root`

`$ sh minecommitdata.sh`

Sample output 
```
Stats for <your respository name> repository
Commits for Defects=4
Commits for Feature Development=213
Commits for SCM Activity=7
Total commits on master branch=224
***************************************************************
Commit percentage distribution
Commits for Defects=1.78%
Commits for Feature Development=95.08%
Commits for SCM Activity=3.12%
```
