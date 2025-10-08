# Utilise une image Node.js stable
FROM node:22-alpine

# Crée et définit le répertoire de travail
WORKDIR /usr/src/app

# Copie les fichiers de dépendance
# Cela permet d'utiliser le cache de Docker en cas de changement de code JS seulement
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie le reste du code de l'application (index.js et frontend/)
COPY . .

# Expose le port par défaut d'Express
EXPOSE 3000

# Commande pour démarrer l'application
CMD [ "node", "index.js" ]