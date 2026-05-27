#!/bin/bash
# Run this script once to push to GitHub and get your APK built automatically.
# 
# STEP 1: Login to GitHub (one time only)
gh auth login

# STEP 2: Create repo and push
gh repo create ar-trace --public --source=. --remote=origin --push

echo ""
echo "✅ Done! Go to: https://github.com/$(gh api user --jq .login)/ar-trace/actions"
echo "Wait ~3 minutes for the build, then download the APK."
echo ""
echo "Direct link to download APK after build completes:"
echo "https://github.com/$(gh api user --jq .login)/ar-trace/actions"
