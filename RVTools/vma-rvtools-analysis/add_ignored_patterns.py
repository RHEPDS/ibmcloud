import re
import pandas as pd

IGNORED_PATTERN_FILE = "helper_files/ignored_patterns.txt"

def clean_pattern(pattern):
    """Normalize patterns by removing extra spaces."""
    if pd.isna(pattern) or pattern.strip() == '':
        return ''
    return pattern.strip()

def format_pattern(pattern):
    """
    Generates a case-insensitive regex pattern for a given ignored pattern after cleaning.
    """
    cleaned_pattern = clean_pattern(pattern)
    return rf"(?i){re.escape(cleaned_pattern)}"

def load_existing_patterns():
    """
    Loads existing patterns from the file to avoid duplicates.
    """
    try:
        with open(IGNORED_PATTERN_FILE, "r", encoding="utf-8") as file:
            return {line.strip() for line in file if line.strip()}
    except FileNotFoundError:
        return set()

def append_pattern_to_file(pattern):
    """
    Appends a new pattern to the file if it does not already exist.
    """
    existing_patterns = load_existing_patterns()

    if pattern in existing_patterns:
        print(f"[INFO] Pattern already exists: {pattern}")
    else:
        with open(IGNORED_PATTERN_FILE, "a", encoding="utf-8") as file:
            file.write(pattern + "\n")
        print(f"[SUCCESS] Added pattern: {pattern}")

def main():
    """
    Main function to take user input and add ignored patterns.
    """
    while True:
        pattern = input("Enter pattern to ignore (or type 'exit' to quit): ").strip()
        if pattern.lower() == "exit":
            print("Exiting...")
            break

        formatted_pattern = format_pattern(pattern)
        append_pattern_to_file(formatted_pattern)

if __name__ == "__main__":
    main()
