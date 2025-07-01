# Start from official Ubuntu image
FROM ubuntu:20.04

# Disable interactive prompt during install
ENV DEBIAN_FRONTEND=noninteractive

# Install Apache
RUN apt-get update && apt install apache2 -y

# Copy index.html into the Apache web root
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
