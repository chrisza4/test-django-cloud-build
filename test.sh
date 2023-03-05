curl -sSL https://install.python-poetry.org | python3 -
poetry install
cd basic_django
poetry run python manage.py test