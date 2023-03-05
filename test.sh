# curl -sSL https://install.python-poetry.org | python3 -
# export PATH="/builder/home/.local/bin:$PATH"
# poetry install
cd basic_django
poetry run python manage.py test