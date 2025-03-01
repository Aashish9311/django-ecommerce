# # Use official Python image
# FROM python:3.9-slim

# # Set working directory
# WORKDIR /app

# # Copy project files
# COPY . .

# # Install dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# # Expose Django's default port
# EXPOSE 8000

# # Run migrations and start the server
# CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]


# # Use an official Python runtime as a parent image
# FROM python:3.9

# # Set the working directory inside the container
# WORKDIR /app

# # Copy the application code into the container
# COPY . /app

# # Install dependencies
# RUN pip install --upgrade pip
# RUN pip install -r requirements.txt

# # Expose the application port (default Django runs on 8000)
# EXPOSE 8000

# # Run Django server
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]







# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the application port (changed to 8080)
EXPOSE 8080

# Run Django server (changed to run on port 8080)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
