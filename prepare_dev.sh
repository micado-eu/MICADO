#!/bin/bash

# GitHub owner (username or organization)
OWNER="micado-eu"

# Array of repository names
REPOS=("installer" "migrant_application" "pa_application" "ngo_application" "bakend" "quasar" "micado_deployment" "MICADO.wiki" )

# Directory to clone repositories into
CLONE_DIR="$1"

# Function to clone repositories
clone_repos() {
    # Iterate over each repository name
    for repo in "${REPOS[@]}"; do
        # Construct the URL for the repository
        REPO_URL="https://github.com/$OWNER/$repo.git"
        
        # Clone the repository into the specified directory
        git clone "$REPO_URL" "$CLONE_DIR/$repo"
        
        # Check if the cloning was successful
        if [ $? -eq 0 ]; then
            echo "Cloned $repo successfully"
        else
            echo "Failed to clone $repo"
        fi
    done
}

# Main script execution
echo "Cloning GitHub repositories..."
clone_repos
echo "Cloning complete"
