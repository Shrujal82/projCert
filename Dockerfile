FROM devopsedu/webapp

# Optional: remove default index page from base image
RUN rm -f /var/www/html/index.php

# Copy your PHP website files from repo into Apache web root
COPY website/* /var/www/html/

# Expose HTTP port
EXPOSE 80

# Start Apache in foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
