# Base image for Rasa
FROM rasa/rasa:3.6.20

# Set working directory inside the container
WORKDIR /app

# Copy all project files to the container
COPY . /app

# Expose the default Rasa port
EXPOSE 5005

# Start the Rasa server with API and CORS enabled
CMD ["rasa", "run", "--enable-api", "--cors", "*", "--debug"]
