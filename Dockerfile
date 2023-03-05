# Use an official Python runtime as a parent image
FROM python:3.11

ENV PATH="${PATH}:/root/.local/bin"

# Set the working directory to /app
WORKDIR /cloud_build_django

# Copy the current directory contents into the container at /app
COPY . /cloud_build_django

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Install dependencies using Poetry
RUN poetry config virtualenvs.create false && poetry install --no-dev

# # Expose port 8000 for the Django app to run on
EXPOSE 8000

# # Run the Django app with Gunicorn
WORKDIR /cloud_build_django/basic_django
CMD poetry run python manage.py runserver 0.0.0.0:8000
# CMD /bin/sh