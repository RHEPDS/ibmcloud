# OS Pattern Script (add_os_pattern.py)

This script allow users to add OS names to the file (`os_filter_patterns.txt`) located in the directory `helper_files` in a structured regex format.
The OS names are cleaned before being added, ensuring that redundant information (e.g., `(32-bit)`, `(64-bit)`) is removed.

# IGNORED Pattern Script (add_ignored_patterns.py)

This script allow users to add patterns found in the VM column to the file (`ignored_patterns.txt`) located in the directory `helper_files` in a structured regex and case-insensitive mode format.
The ignored patterns are cleaned before being added, ensuring that redundant and duplicate information is removed.

## 📌 Features
- Cleans OS names and ignored patterns before adding them.
- Prevents duplicate entries.
- Appends OS names in regex format to `os_filter_patterns.txt`.
- Appends ignored patterns in case-insensitive mode/regex format to `ignored_patterns.txt`.

## 🛠️ Prerequisites
- Python 3.x installed
- `pandas` library (install using `pip install pandas`)

## 🚀 How to Use

### Run the Script
Open a terminal and execute:
```bash
python add_os_pattern.py
```

or

```bash
python add_ignored_patterns.py
```

#### Example
```
python add_os_pattern.py

Enter OS name (or type 'exit' to quit): Ubuntu 24.04.2 LTS
[SUCCESS] Added pattern: ^Ubuntu\ 24\.04\.2\ LTS(?:\s*\(.*\))?$
```

and

```
python add_ignored_patterns.py

Enter pattern to ignore (or type 'exit' to quit): *_template
[SUCCESS] Added pattern: (?i)\*_template
```
