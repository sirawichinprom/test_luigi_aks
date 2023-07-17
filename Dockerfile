# Base image
FROM python:3.8

# Install Git
RUN apt-get update && apt-get install -y git

# Set the working directory
WORKDIR /app

# Clone the Git repository with username and password
RUN git clone https://sirawichinprom:Sirawichtoey090942@github.com/sirawichinprom/luigi.git .

# Install dependencies
RUN pip install --no-cache-dir luigi

# Expose any required ports (if applicable)
# EXPOSE 8082

# Set the entrypoint command
CMD ["luigid"]