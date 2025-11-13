# Preamble
### It is suggested to create some type of virtual environment for your project
### before installing any modules. This keeps your project dependencies isolated

# -------- BASIC INFORMATION ---------

# Code Objective: Provide a brief description of the script's purpose.
# Author: Your Name
# Date: YYYY-MM-DD


# ---------- MODULES ----------
import os  # this is an example module

# ---------- INPUT DATA ----------
input_file = os.path.join("data", "input.txt")

# ---------- FUNCTIONS ----------
def example_function(file_path):
    """This function reads a file and prints its contents."""
    with open(file_path, "r") as file:
        content = file.read()
        print(content)

# ---------- MAIN SCRIPT ----------
if __name__ == "__main__":
    example_function(input_file)

# ---------- END OF SCRIPT ----------

# ---------- DEPENDENCIES ----------
### Create a requirements.txt file listing the modules used in this script
## the code below can be run in the terminal and creates the requirements.txt 
# file with the necessary dependencies

# pip freeze > requirements.txt