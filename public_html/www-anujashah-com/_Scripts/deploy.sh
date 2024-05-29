#!/bin/bash

#!/bin/bash

# Extract necessary information from the incoming webhook payload
payload=$(cat)  # Read the request body from standard input
repository=$(echo "$payload" | jq -r '.repository.full_name')  # Extract the repository name
branch=$(echo "$payload" | jq -r '.ref')  # Extract the branch name

# Log the received webhook event and repository
echo "Received push event for repository: $repository"
echo "Branch: $branch"

# Check if the push event is on the master branch
if [ "$branch" = "refs/heads/master" ]; then
    # Perform actions specific to a push to the master branch
    echo "Push to master branch detected. Performing actions..."

    # Execute Git pull to update the repository from the remote
    git --git-dir=/home4/anujasha/.git --work-tree=/home4/anujasha pull origin master

    # Optionally, perform other actions such as building and deploying your application

    # Log success
    echo "Actions completed successfully."
else
    echo "Push event received, but not on the master branch. Ignoring..."
fi

# Respond to the webhook request with an HTTP status code (e.g., 200 OK)
echo "Webhook processing complete."



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


# # Navigate to your remote repository
# cd ~/home4/anujasha

# # Pull changes from your local repository
# git --git-dir=/Users/anujashah/Desktop/Coding/www-anujashah-com/.git --work-tree=/Users/anujashah/Desktop/Coding/www-anujashah-com pull origin master
