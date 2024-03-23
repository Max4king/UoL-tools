#!/bin/bash

# Input the zip file name
zip_file="$1"
main_folder="/home/ryan/Program/UoL-work/sleuth/"
# Extract the folder name, chapter number, and identifier from the file name
folder_name=$(echo $zip_file | cut -d'-' -f1)
chapter_number=$(echo $zip_file | cut -d'-' -f2)
identifier=$(echo $zip_file | cut -d'-' -f3 | cut -d'.' -f1)

# Create the directory if it doesn't exist
mkdir -p "${main_folder}${folder_name}/${folder_name}-${chapter_number}"

# Unzip the file into the specified directory
unzip "$zip_file" -d "${main_folder}${folder_name}/${folder_name}-${chapter_number}"

echo "File '$zip_file' has been extracted into folder '${main_folder}${folder_name}/${folder_name}-${chapter_number}'."

code "${main_folder}${folder_name}/${folder_name}-${chapter_number}"
