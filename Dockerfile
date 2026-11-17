# Sebastián Castro Vilches | Asignatura: DEVPS1301-1-DEVOPS | IACC
FROM nginx:alpine

# Copiar archivos estáticos al directorio público por defecto de Nginx
COPY src/ /usr/share/nginx/html/

# Exponer el puerto interno estándar HTTP del contenedor
EXPOSE 80

# Iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]