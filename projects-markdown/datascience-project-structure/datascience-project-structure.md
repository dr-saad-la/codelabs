author: AUTHOR_NAME
summary: A step by step tutorial on how to structure a data science project from reading data to deployment.
id: datascience-project-structure
tags: [data-science, ]
categories:
environments: Web
status: Published
feedback link: https://github.com/dr-saad-la/codelabs/tree/main/projects-markdown/datascience-project-structure.md

# Title

<!-- ------------------------------------ -->


## Overview

In this tutorial, I will explain the steps of organizing data science projects, how to structure each folder, from the beginning untill the project deployment:

Duration: 0:05:00

### What we cover
In this tutorial we will cover:

1. Create folder structure
2. Set up working environment with `conda` or `mamba`
3. Document the project using `sphinx`
4. Deploying the project using `FastAPI` or `flask` 

<aside class="positive">
Info box
</aside>

Some text 



<!-- ------------------------------------ -->

## Prerequisites

Duration: 0:07:00

This tutorial is meant for entry level data or junior data scientists, so I assume you have the necessary skills to create an entire data science project, here are the main requisites:

1. Working with command line tools
2. Familiarity with data science comand line tools such as `conda`
3. Already mastering Jupyter notebook (or equivalent IDE)
4. Familiarity with github actions, `flask` or `FastAPI`


<aside class="positive">
Info box
</aside>

<!-- ------------------------ -->

## Set up Data Science Main Working Directory

1. Change to the desired working directory. In this tutorial, we will consider the home directory as our main working directory:

   - Change to home directory:
     - Linux-based systems:
       ```sh
       cd ~  
       ```
     - Windows:
       ```sh
       cd %HOMEPATH%
       ```

2. Create the working directory for your project. For this tutorial, we'll assume a project on car price prediction:
    ```sh
    mkdir car-project
    ```

3. Change to the newly created directory:
    ```sh
    cd car-project
    ```

### Creating the data directory

1. Create a directory to store data in:
    ```sh
    mkdir data
    ```

<aside class="negative">
<strong>Important</strong>: Note that data is immutable, so never edit the main data. Keep it as is. So we will create different folders inside this directory
</aside>

2. Create Data Sub-directories:
   - Create `raw`:
     ```sh
     mkdir data/raw
     ```
   - Create `processed`:
     ```sh
     mkdir data/processed
     ```
   - Create `interim`:
     ```sh
     mkdir data/interim
     ```
   - Create `external`:
     ```sh
     mkdir data/external
     ```

3. All in one: You can do all the previous steps in once by running the follwing command:
    ```sh
    mkdir -p data/raw data/processed data/interim data/external
    ```

<!-- ------------------------ -->
## The notebooks Directory

Duration: 0:05:00


<!-- ------------------------ -->

## The model directory




<!-- ------------------------ -->
## The documentation directory



<!-- ------------------------ -->

## The Report Directory



<!-- ------------------------ -->
## The Graphics Directory


<!-- ------------------------ -->
## The Script Directory


<!-- ------------------------ -->
## The Deplyment Directory


<!-- ------------------------ -->
## What's next?

Duration: 0:02:00

Congratulations! You have completed the tutorial and learned how to:

✅ Install  
✅ Use  
✅ Implement  

Next, you may want to proceed with this tutorial:

- 💻[](https://dr-saad-la.github.io/codelabs/codelabs/CODELAB_NAME)


Thank you for participating in this tutorial. If you found any issues along the way I'd appreciate it if you'd raise them by clicking the "Report a mistake" button at the bottom left of this site.

*Dr Saad Laouadi (2024) | [saad-laouadi](https://www.dr-saad-la.github.io) | Made with [Codelabs](https://github.com/googlecodelabs/tools)*
