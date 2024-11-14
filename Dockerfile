# Use the official PostgreSQL image
FROM postgres:latest

# Set the working directory
WORKDIR /liquibase

# Copy the properties file
COPY ./database.properties /liquibase/database.properties

# Copy the Liquibase changelog directory
COPY ./liquibase /liquibase

# Install curl to fetch environment variables
RUN apt-get update && apt-get install -y curl

# Run Liquibase to apply changes
CMD ["sh", "-c", "source /liquibase/database.properties && liquibase --changeLogFile=/liquibase/changelog.xml --url=jdbc:postgresql://localhost:5432/${POSTGRES_DB} --username=${POSTGRES_USER} --password=${POSTGRES_PASSWORD} --driver=org.postgresql.Driver"]
