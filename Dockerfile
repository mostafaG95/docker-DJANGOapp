# Use an official Python runtime as the base image
FROM python:3.8

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the dependencies in the requirements.txt file
RUN pip install -r requirements.txt

# Copy the rest of the project files to the container
COPY . .

# Set environment variables for Django settings
ENV DJANGO_SETTINGS_MODULE simpleApp.settings

# Expose port 8000 for the Django development server
EXPOSE 8000

# Run the Django development server with the command line
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

