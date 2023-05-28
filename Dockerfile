# Use a Python base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app files to the container
COPY . .

# Set environment variables, if needed
# ENV VARIABLE_NAME=value

# Expose the port on which the Flask app runs (usually 5000)
EXPOSE 5000

# Specify the command to run the Flask app
CMD ["python", "hello.py"]
