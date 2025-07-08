# Folosim nginx oficial, simplu și rapid
FROM nginx:alpine

# Ștergem conținutul implicit
RUN rm -rf /usr/share/nginx/html/*

# Copiem conținutul local (optional, dar pentru build inițial)
COPY site /usr/share/nginx/html

# Expunem portul 80 (implicit)
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

