#!/bin/bash

# Replace <YOUR_GITHUB_USERNAME> with your actual GitHub username
GITHUB_USERNAME="ajot"

# Check if project name argument is provided
if [ $# -eq 0 ]; then
  echo "Error: Please provide a project name."
  echo "Usage: ./start_python_project.sh <project_name>"
  exit 1
fi

# Get project name as a command-line argument
project_name=$1

# Create project directory
cd "$HOME/dev/python_projects"
mkdir "$project_name"
cd "$project_name"

# Initialize virtual environment
virtualenv -p python3 venv
source venv/bin/activate

# Install dependencies (e.g., requests and numpy)
# pip install numpy

# Create project structure
mkdir src tests docs

# Create main script
touch src/main.py

# Create requirements.txt file
touch requirements.txt

# Create README.md file
touch README.md

# Initialize version control (Git)
git init

# Create a new repository on GitHub
# Replace <YOUR_GITHUB_USERNAME> with your actual GitHub username
gh repo create "$project_name" --private

# Set up the remote repository
git remote add origin "https://github.com/$GITHUB_USERNAME/$project_name.git"
git remote add origin "https://github.com/$GITHUB_USERNAME/$project_name.git"


echo "Current working directory: $(pwd)"
echo "Git repository initialized and remote repository set up."

echo "Project setup complete. Happy coding!"

# Open main.py in Visual Studio Code in a new window, and bring main.py to focus
code --new-window . --goto src/main.py