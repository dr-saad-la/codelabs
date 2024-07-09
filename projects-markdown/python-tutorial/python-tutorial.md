summary: Python Environment Setup
id: python-tutorial
categories: Python, Environment
status: Published
authors: Dr Saad Laouadi
feedback link: https://github.com/dr-saad-la/codelabs/issues
analytics account: UA-XXXXXX-X


# Python Environment Setup

## Introduction

Welcome to the Python Environment Setup tutorial. This guide will walk you through setting up a Python development environment.

## What you'll learn

- How to install Python
- How to verify Python installation
- How to set up a code editor
- How to create and activate a virtual environment

## What you'll need

- Basic knowledge of Python programming
- A computer with internet access

## Step 1: Install Python

1. Visit the [official Python website](https://www.python.org/downloads/).
2. Download the latest version of Python for your operating system.
3. Follow the installation instructions for your OS:
   - **Windows**: Run the installer and check the option to add Python to your PATH.
   - **macOS**: Download the `.pkg` file and follow the installation prompts.
   - **Linux**: Use your package manager, e.g., `sudo apt-get install python3`.

## Step 2: Verify Python Installation

1. Open your terminal (Command Prompt on Windows, Terminal on macOS/Linux).
2. Run the following command to verify the installation:
    ```bash
    python --version
    ```
    or for Python 3.x
    ```bash
    python3 --version
    ```
    You should see the installed Python version.

## Step 3: Install a Code Editor

1. Download and install [Visual Studio Code](https://code.visualstudio.com/).
2. Install the Python extension for Visual Studio Code.

## Step 4: Create a Virtual Environment

1. Open your terminal and navigate to your project directory:
    ```bash
    cd /path/to/your/project
    ```
2. Create a virtual environment:
    ```bash
    python -m venv env
    ```
    or for Python 3.x
    ```bash
    python3 -m venv env
    ```
3. Activate the virtual environment:
    - **Windows**:
        ```bash
        .\env\Scripts\activate
        ```
    - **macOS/Linux**:
        ```bash
        source env/bin/activate
        ```

## Congratulations!

Congratulations! You have successfully set up your Python development environment. You are now ready to start developing Python applications.