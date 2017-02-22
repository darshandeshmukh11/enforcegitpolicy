#!/bin/bash
# Script to mine the commit messages

echo "Stats for arservices repository";
cd /users/dedileep/Machine_learning/arservice;
Defects=$(git log --pretty=format:"%s" | grep "^DE" --count)
echo 'Commits for Defects='$Defects
Feature=$(git log --pretty=format:"%s" | grep "^US" --count)
echo 'Commits for Feature Development='$Feature
SCMActivity=$(git log --pretty=format:"%s" | grep "^SCM" --count)
echo 'Commits for SCM Activity='$SCMActivity
TotalCommits=$(git rev-list --count master)
echo 'Total commits on master branch='$TotalCommits
echo '***************************************************************'
echo 'Commit percentage distribution'
Defectspercentage=$(echo "scale=2; $Defects*100/$TotalCommits" | bc)
Featurespercentage=$(echo "scale=2; $Feature*100/$TotalCommits" | bc)
SCMActivitypercentage=$(echo "scale=2; $SCMActivity*100/$TotalCommits" | bc)
echo 'Commits for Defects='$Defectspercentage'%'
echo 'Commits for Feature Development='$Featurespercentage'%'
echo 'Commits for SCM Activity='$SCMActivitypercentage'%'


