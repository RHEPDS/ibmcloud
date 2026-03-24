import re
import pandas as pd

OS_FILTER_FILE = "helper_files/os_filter_patterns.txt"

def clean_os_name(os_name):
    """Normalize OS names by removing extra spaces and redundant information."""
    if pd.isna(os_name) or os_name.strip() == '':
        return ''
    os_name = os_name.strip()
    os_name = re.sub(r"\s*\(.*\)$", "", os_name)  # Remove (32-bit) / (64-bit) and similar info
    os_name = re.sub(r"\s+", " ", os_name)  # Remove extra spaces
    return os_name

def format_os_pattern(os_name):
    """
    Generates a regex pattern for a given OS name after cleaning.
    """
    cleaned_os_name = clean_os_name(os_name)
    os_name_escaped = re.escape(cleaned_os_name)
    return rf"^{os_name_escaped}(?:\s*\(.*\))?$"

def load_existing_patterns():
    """
    Loads existing patterns from the file to avoid duplicates.
    """
    try:
        with open(OS_FILTER_FILE, "r", encoding="utf-8") as file:
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
        with open(OS_FILTER_FILE, "a", encoding="utf-8") as file:
            file.write(pattern + "\n")
        print(f"[SUCCESS] Added pattern: {pattern}")

def main():
    """
    Main function to take user input and add OS patterns.
    """
    while True:
        os_name = input("Enter OS name (or type 'exit' to quit): ").strip()
        if os_name.lower() == "exit":
            print("Exiting...")
            break

        pattern = format_os_pattern(os_name)
        append_pattern_to_file(pattern)

if __name__ == "__main__":
    main()
