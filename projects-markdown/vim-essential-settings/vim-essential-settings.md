author: Dr. Saad Laouadi
summary: Learn the essential settings for the VIM text editor to improve productivity and coding efficiency.
id: vim-essential-settings
tags: [vim, text editor, productivity, coding, configuration]
categories: [Text Editors, Productivity Tools]
environments: Web
status: Published
feedback link: https://github.com/dr-saad-la/codelabs/tree/main/projects-markdown/vim-essential-settings.md


# VIM Text Editor Essential Settings


<!-- ------------------------ -->
## Overview

This guide will walk you through the essentials of VIM Text editor.


In this codelab we will introduce you to the essential settings in Vim, a highly configurable text editor used by many programmers and power users. 

By the end of this tutorial, you will be able to customize your Vim environment to enhance your productivity and streamline your workflow.

We will use the **TE** to refer to **Text Editor**

Duration: 0:05:00

### What we cover

In this tutorial we will cover:

- **What is VIM?**: Introduction to VIM text editor
- **Different flavors of VIM**: The different types of VIM editors.
- **Installing VIM**: Learn how to install VIM on different platforms.
- **VIM Modes**: Learn the different modes of VIM TE
- **Basic Settings**: Learn how to set up basic configurations such as:
	- line numbers
	- Syntax highlighting
	- Indentation.
- **Customization**: Explore ways to personalize Vim with themes and plugins to suit your preferences.
- **Productivity Enhancements**: Implement settings and plugins that improve your coding efficiency and experience.
- **File Navigation**: Discover how to navigate between files and directories efficiently using built-in Vim commands.


<aside class="positive">
💡 <strong>Tip:</strong> Customizing Vim can greatly enhance your productivity and make your coding experience more enjoyable.
</aside>

<aside class="negative">
⚠️ <strong>Note:</strong> Some advanced customizations may require additional plugins or familiarity with Vimscript. Make sure to test new configurations in a safe environment before applying them to your main setup.
</aside>


<!-- ------------------------ -->
## Prerequisites

Duration: 0:01:00

To start this tutorial, you don't need much, just:

1. **Be open to learning**: Be ready to master a powerful new tool.
2. **Commitment to Keyboard Navigation**: Prepare to ditch the mouse and rely solely on keyboard navigation.
3. **Desire to Switch to a Command-Based Editor**: Have the determination to transition to a text editor that relies heavily on commands.
4. **Integration with Preferred Tools**: Be open to integrating Vim with other tools and workflows you currently use.
5. **Curiosity**: Be eager to explore the capabilities and flexibility of Vim.
6. **Confidence**: Enjoy the process and don't hesitate to show off your skills as you become proficient with Vim, looking like a professional computer scientist.

While these attitudes and mindsets are essential, familiarity with command line tools is also preferred as it will ease the learning curve.


<aside class="positive">
💡 <strong>Tip:</strong> Having a basic understanding of programming concepts and being comfortable with other text editors can make learning Vim easier and more intuitive.
</aside>

<aside class="negative">
⚠️ <strong>Note:</strong> Vim has a steep learning curve for beginners. It is normal to feel overwhelmed initially, but with practice, Vim becomes a powerful and efficient tool.
</aside>


<!-- ------------------------ -->
## What is VIM?

Duration: 0:05:00


<!-- ------------------------ -->
## Different Types of VIM Text Editor

Duration: 0:05:00


Vim comes in several variants, each catering to different needs and environments:

1. **Vim**: The standard version available on most Unix-based systems. It provides a robust set of features suitable for everyday text editing.

2. **GVim**: The graphical version of Vim, offering menus and toolbars for users who prefer a GUI. It includes all the features of Vim with additional graphical elements.

3. **Neovim**: An extensible and modernized fork of Vim, designed to provide better performance and more advanced features, including improved plugin architecture and asynchronous execution.

4. **MacVim**: A macOS-specific version of Vim, which integrates seamlessly with macOS's look and feel, providing a native experience for Mac users.

5. **Vim in IDEs**: Many IDEs (like VSCode and IntelliJ) offer Vim emulation through plugins, allowing users to leverage Vim keybindings and commands within their preferred development environment.

<!-- ------------------------ -->

## Installing VIM 


### Installing VIM on MAC Machines

Since I am a Mac user, I wanted to start setting VIM on Mac Machines


```sh
brew install vim
```

Check if `vim` is installed

```sh
vim --version
```


Check where vim is install 

```sh
which vim
```


### Installing VIM on Linux 

#### Installing VIM on Debian/Ubuntu

#### Installing VIM on Fedora


### Installing VIM on Windows Machines

<!-- ------------------------ -->

## Understanding VIM Modes

Vim operates in different modes, each designed for specific tasks:

1. **Normal Mode**: The default mode for navigating and manipulating text. Use commands to delete, copy, and move text.
2. **Insert Mode**: Enter this mode by pressing `i`. It allows you to insert and edit text.
3. **Visual Mode**: Accessed by pressing `v`. It lets you select and manipulate blocks of text.
4. **Command-Line Mode**: Enter this mode by pressing `:`. It is used for executing commands like saving (`:w`), quitting (`:q`), and searching.

<!-- ------------------------ -->
## Hello VIM 

1. Open VIM: open vim by typing `vim` on your terminal 

2. Exit VIM: Press `esc` key then type `:` and the `q` at the lower left corner of the screen to exit vim editor

### Explore VIM

### Get Help from VIM Documentation



<!-- ------------------------ -->

## Basic Settings 


### Understanding VIM Essentials

1. **Comments**: 


### Setting Folder Structure


```text
/.vim
├── autoload/                  # Contains scripts that define functions loaded automatically as needed.
├── backup/                    # Stores backup files created during editing sessions.
├── colors/                    # Holds color scheme files to customize Vim's appearance.
└── plugged/                   # Manages Vim plugins and their files, typically used with a plugin manager.
```


Here is example of an already configured VIM

```text
.vim/
├── autoload/                  # Contains scripts that are loaded automatically when needed.
│   └── <plugin_name>.vim      # Example files that define functions to be autoloaded.
│
├── backup/                    # Stores backup files for edited files.
│   └── <backup_file>.vim      # Example backup files created during editing.
│
├── colors/                    # Contains color scheme files for Vim.
│   └── <color_scheme>.vim     # Example color scheme files to customize Vim's appearance.
│
└── plugged/                   # Holds Vim plugins managed by a plugin manager (e.g., vim-plug).
    └── <plugin_name>/         # Directory for each plugin with its own files.
        └── <plugin_files>.vim
```

<!-- ------------------------ -->
## Essentials Settings


Personally I prefer to comment my code as well as configuration file, so whenever I get back to them later, or I change to a different machie, I won't need to look up a command again. 

1. Commenting Lines in VIM: The `"` is the comment character in VIM scripting language

2. Creating Banners to separate different setting sections

for example: The general setting will look more like this:

```text
" ========================================================
"			General Settings
" ========================================================


" ========================================================
"			Plugins Settings
" ========================================================


" ========================================================
"			Other Section Setting
" ========================================================
```




<!-- ------------------------ -->

## Essential Commands


<!-- ------------------------ -->

## Installing Vim Plurgins

1. First you need to install Vim-plug, to do so run the following command:


```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

2. Edit `.vimrc` vim config file: Open your .vimrc file in Vim:

```sh
vim ~/.vimrc
```

3. Add vim-plug Initialization: Add the following lines to your `.vimrc` to initialize vim-plug and specify the plugins you want to install:

```vim
call plug#begin('~/.vim/plugged')

" List the plugins you want to install

" Example plugin
Plug 'tpope/vim-sensible'

" Add other plugins here

" Initialize plugin system
call plug#end()
```

4. Install Plugins: Open Vim and run the following command to install the plugins specified in your `.vimrc`:

```vim
:PlugInstall
```

<!-- ------------------------ -->


## What's next?

Duration: 0:02:00

Congratulations! You have completed the tutorial and here is what you have learned:


✅ What is VIM  
✅ Different Types of VIM editors  
✅ Essential VIM Setup  
✅ Essential VIM commands  

Next, you may want to proceed with this tutorial:

There is an upcomming tutorial about VIM Intermediate (stay tuned)

- 💻[VIM Intermediate Tutorial](https://dr-saad-la.github.io/codelabs/codelabs/vim-intermediate)


Thank you for participating in this tutorial. If you found any issues along the way I'd appreciate it if you'd raise them by clicking the "Report a mistake" button at the bottom left of this site.

*Dr Saad Laouadi (2024) | [saad-laouadi](https://www.dr-saad-la.github.io) | Made with [Codelabs](https://github.com/googlecodelabs/tools)*

