# Use the official PostgreSQL image
FROM postgres:latest

# Set environment variables for the default database, user, and password
ENV POSTGRES_DB=test_db
ENV POSTGRES_USER=username
ENV POSTGRES_PASSWORD=password