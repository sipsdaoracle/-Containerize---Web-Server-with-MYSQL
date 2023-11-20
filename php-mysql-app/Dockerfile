# Use a specific base image with the desired PHP version and Apache web server
FROM php:7.4-apache

# Install necessary extensions and dependencies for your web application
RUN apt-get update && \
    apt-get install -y libpng-dev && \
    docker-php-ext-install pdo pdo_mysql gd

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the contents of the current directory into the container at /var/www/html
COPY . .

# Set the appropriate permissions for Apache
RUN chown -R www-data:www-data /var/www/html && \
    a2enmod rewrite

# Expose port 80 (Apache web server)
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]