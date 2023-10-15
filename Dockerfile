# Use an official Python runtime as a parent image
FROM python

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose port 5000 for the Flask application
EXPOSE 5000

# Define environment variables
ENV MYSQL_HOST=localhost
ENV MYSQL_USER=rahul
ENV MYSQL_PASSWORD=rahul@123
ENV MYSQL_DATABASE=my_db

# Run the Flask application
CMD ["python", "app.py"]