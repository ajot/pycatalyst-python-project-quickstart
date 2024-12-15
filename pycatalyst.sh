#!/bin/bash

# Replace <YOUR_GITHUB_USERNAME> with your actual GitHub username
GITHUB_USERNAME="YOUR_GITHUB_USERNAME"

# Note: This script works in conjunction with the 'source' command to persist directory changes in the current terminal session.
# You can create an alias in your .zshrc or .bashrc file like this:
# alias np='source /path/to/start_python_project.sh'

# Check if project name argument is provided
if [ $# -eq 0 ]; then
  echo "Error: Please provide a project name."
  echo "Usage: ./start_python_project.sh <project_name>"
  exit 1
fi

echo "PyCatalyst - Python Quick Start Script v0.2"
# Get project name as a command-line argument
project_name=$1

# Create project directory
cd "$HOME/Dropbox/dev_projects/python_projects"
mkdir "$project_name"
cd "$project_name"

# Initialize virtual environment
virtualenv -p python3 venv
source venv/bin/activate

# Install dependencies (e.g., requests and numpy)
pip install python-dotenv

# Create main script and add starter code
cat <<EOL > main.py
import os
from dotenv import load_dotenv

# Automatically load the .env file from the current directory or parent directories
load_dotenv()

# Access the API keys
twilio_api_key = os.getenv('API_KEY_TWILIO')
stripe_api_key = os.getenv('API_KEY_STRIPE')
openai_api_key = os.getenv('API_KEY_OPENAI')

print(f'Twilio API Key: {twilio_api_key}')
print(f'Stripe API Key: {stripe_api_key}')
print(f'OpenAI API Key: {openai_api_key}')
EOL

# Create requirements.txt file
echo "python-dotenv" > requirements.txt

# Create README.md file
touch README.md

# Initialize version control (Git)
git init

# Create a new repository on GitHub
gh repo create "$project_name" --private

# Set up the remote repository
git remote add origin "https://github.com/$GITHUB_USERNAME/$project_name.git"

echo "Current working directory: $(pwd)"
echo "Git repository initialized and remote repository set up."

echo "Project setup complete. Happy coding!"

# Open main.py in Visual Studio Code in a new window, and bring main.py to focus
code --new-window . --goto main.py

# Ensure terminal ends in the new project directory
cd "$HOME/Dropbox/dev_projects/python_projects/$project_name"