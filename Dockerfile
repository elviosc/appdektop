# Use a imagem do Nginx como base
FROM nginx:alpine

# Copie os arquivos do aplicativo Flutter web para o diretório de documentos do Nginx
COPY build/web /usr/share/nginx/html

# Exponha a porta 80 para que o Nginx possa servir o aplicativo
EXPOSE 80

# Comando de inicialização do Nginx
CMD ["nginx", "-g", "daemon off;"]
