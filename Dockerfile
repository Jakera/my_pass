# Usa la imagen oficial de Nginx
FROM nginx:alpine

# Copia tu archivo HTML al directorio por defecto de Nginx
COPY index.html /usr/share/nginx/html/

# Copia otros archivos estáticos si los tienes (opcional)
# COPY css/ /usr/share/nginx/html/css/
# COPY js/ /usr/share/nginx/html/js/

# Expone el puerto 80
EXPOSE 80

# Comando por defecto de Nginx (ya viene configurado)
CMD ["nginx", "-g", "daemon off;"]
