# Dockerfile básico para uma aplicação Node.js (Exemplo)

# Usar uma imagem base do Node
FROM node:18-alpine

# Definir o diretório de trabalho
WORKDIR /app

# Copiar package.json e package-lock.json (se existir)
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o restante do código da aplicação
COPY . .

# Expor a porta que a aplicação usa
EXPOSE 3000

# Comando para rodar a aplicação
CMD [ "node", "server.js" ] # Ou o seu script de inicialização
