REM batch file sets up env for Jupyter Lab
call .venv\Scripts\activate

echo Upgrading pip...
python -m .venv\Scripts\pip install --upgrade pip

echo Installing required packages...
python -m .venv\Scripts\pip install -r requirements.txt

echo Running Jupyter Lab 
jupyter lab

