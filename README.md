# python-project-quickstart
Automate Python project setup with this script, creating a virtual environment, directories, and initializing version control, helping you start coding python projects faster.

## Python Project Quickstart Script

As someone who loves experimenting with Python libraries and APIs, starting new projects quickly is important. Setting up a fresh Python project can sometimes be time-consuming, and a bit annoying to be honest.

Use this shell script to automate the process and get to coding coding quicker. Here's what it does:

- Prompts the user to provide a project name as a command-line argument, and throws an error message and usage instructions if the project name argument is missing.

- Creates a new project directory with the specified name inside the `python_projects` directory located in the user's home directory.

- Sets up a virtual environment named `venv` within the project directory using `virtualenv` with Python 3.

- Installs required Python dependencies (e.g., requests and numpy) using pip or a preferred package manager (Note: The `pip install numpy` line is currently commented out in the script and can be uncommented if specific dependencies need to be installed).

- Creates sub-directories for source code (`src`), tests (`tests`), and documentation (`docs`) inside the project directory.

- Generates essential files like `main.py`, `requirements.txt`, and `README.md`.

- Initializes a Git repository for version control.

- Creates a new private repository on GitHub with the specified project name using GitHub CLI (`gh`) and links it to the remote repository.

- Sets the remote repository's URL with the user's GitHub username and project name.

- Informs the user about the current working directory and successful completion of project setup.

- Opens the `main.py` file in Visual Studio Code (if available) in a new window, bringing it into focus for immediate coding.

## Setting up the script

1. Download this repository and navigate to the downloaded folder.

2. Make the script executable by running the following command (replace `start_python_project.sh` with the actual name of the script file):

```bash
chmod +x start_python_project.sh
```

## Running the script

To create a new Python project, open your terminal and run the script with the desired project name as an argument (replace `my_project` with your desired project name):

```bash
./start_python_project.sh my_project
```

## [Optional] Create an alias

To make it even easier to start a new project, you can create an alias for the script. Here's how:

1. Open your shell's configuration file using a text editor (e.g., `~/.bashrc` for Bash or `~/.zshrc` for Zsh):

```bash
nano ~/.bashrc
# or if you're using zsh
nano ~/.zshrc
```

2. Add the following line at the end of the file, replacing `/path/to/start_python_project.sh` with the actual path to your shell script:

```bash
alias newproject='/path/to/start_python_project.sh'
```

3. Save the file and exit the text editor.

Now, you can start a new Python project simply by running:

```bash
newproject <project_name>
```

Fin!