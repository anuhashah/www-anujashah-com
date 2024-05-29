#!/bin/bash

# # Set your secret token
# SECRET_TOKEN="HotToddy2"

# # Get the secret token from the request headers or payload
# WEBHOOK_SECRET_TOKEN="${HTTP_X_HUB_SIGNATURE_256}"

# # Compare the secret tokens
# if [ "$SECRET_TOKEN" == "$WEBHOOK_SECRET_TOKEN" ]; then
#     # Pull changes from your local repository
# 	git --git-dir=/Users/anujashah/Desktop/Coding/www-anujashah-com.git --work-tree=/Users/anujashah/Desktop/Coding/www-anujashah-com pull origin master
# fi

# #HEHE


# Navigate to your remote repository
cd ~/home4/anujasha

# Pull changes from your local repository
git --git-dir=/Users/anujashah/Desktop/Coding/www-anujashah-com/.git --work-tree=/Users/anujashah/Desktop/Coding/www-anujashah-com pull origin master
