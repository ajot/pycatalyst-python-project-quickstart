# PyCatalyst

**Automate Python project setup with this script, creating a virtual environment, directories, and initializing version control, helping you start coding Python projects faster.**

## Python Project Quickstart Script

As someone who loves experimenting with Python libraries and APIs, starting new projects quickly is important. Setting up these projects can sometimes be time-consuming, and a bit annoying to be honest.

So, I wrote this nifty shell script to automate the process and get to the fun part—coding—faster. Here's what it does:

- Prompts the user to **provide a project name** as a command-line argument.
- Creates a new project directory with the specified name.
- Sets up a virtual environment and installs dependencies.
- Installs required Python dependencies using pip.
- Creates sub-directories for source code, tests, and documentation.
- Generates essential files like `main.py`, `requirements.txt`, and `README.md`.
- Initializes a Git repository for version control.
- Opens the `main.py` file in Visual Studio Code in a new window.
- [Optional] Sets the remote repository's URL with the user's GitHub username and project name.
- [Optional] Creates a new private repository on GitHub with the specified project name using GitHub CLI (`gh`) and links it to the remote repository.

## Pre-requisites

To be able to create a GitHub repo automatically, you need to install the GitHub CLI. Follow the instructions here: [GitHub CLI Quickstart](https://docs.github.com/en/github-cli/github-cli/quickstart)

```bash
brew install gh
gh auth login
```

## Setting up the script

1. Download this repository and navigate to the downloaded folder.

2. Make the script executable by running the following command:

```bash
chmod +x pycatalyst.sh
```

## Running the script

To create a new Python project, open your terminal and run the script with the desired project name as an argument (replace `my_project` with your desired project name):

```bash
./pycatalyst.sh my_project
```

## [Optional] Create an Alias

To make it even easier to start a new project, you can create an alias for the script. Here's how:

1. Open your shell's configuration file using a text editor (e.g., `~/.bashrc` for Bash or `~/.zshrc` for Zsh):

```bash
nano ~/.bashrc
# or if you're using zsh
nano ~/.zshrc
```

2. Add the following line at the end of the file, replacing `/path/to/pycatalyst.sh` with the actual path to your shell script:

```bash
alias newproject='/path/to/pycatalyst.sh'
```

3. Save the file and exit the text editor.

Now, you can start a new Python project simply by running:

```bash
newproject <project_name>
```

## Why Use This Script Over Tools Like Cookiecutter?

I like this over Cookiecutter or similar packages because of its simplicity. Most of my projects start as a quick experiment or hacky thing and don't need the bells and whistles of a Cookiecutter template. I also want to do a few things automatically:

- **Integration with Dropbox**: This is a bit of a personal choice, but I sync and backup to Dropbox. This script allows me to point to a directory within Dropbox, making sure all projects are synced and backed up automatically.
- **Virtual Environment Setup**: This is important to me. I don't want to do this manually each time. This script automates the creation and activation of a virtual environment, a step that’s more manual with something like Cookiecutter.
- **Dependency Installation**: Installs dependencies immediately after setting up the virtual environment, saving an extra step. In the future, I could definitely have it pull from `requirements.txt`.
- **GitHub Repository Creation**: This again is something custom for me. I like creating a GitHub repo for all my projects, so I can push them there when I am ready to. The script uses the GitHub CLI to create a new repository on GitHub and set up the remote repository seamlessly.
- **Opening the Project in Visual Studio Code**: This is the simplest, but perhaps the most annoying thing that the script solves. Once I have created the project, it opens the new project in VS Code and brings the `main.py` file into focus, so I can start coding right away.

Feel free to tweak it to suit your needs and let me know if you find it useful!

Happy coding!

---

Fin!