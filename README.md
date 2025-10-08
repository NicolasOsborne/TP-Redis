# Nicolas OSBORNE

# Applications en temps réel - TP Chat avec Redis

## Contexte

Ce TP est réalisé dans le cadre du module "Applications en Temps Réel" en M2 Ingénierie du Web à l'ESGI, dispensé par Laurent BELLON.

## Objectif du TP

En partant d'une application de chat développée avec Node.js, Express et Socket.IO, l'objectif de ce TP est d'intégrer Redis Pub/Sub pour permettre la diffusion d'événements (messages de chat) entre plusieurs instances d'une application serveur, assurant la cohérence des communications en temps réel, une haute disponibilité et une scalabilité.

## Technologies utilisées

- Docker et Docker Compose
- Node.js et Express
- Socket.IO
- Redis
- HTML, CSS et Vanilla JS

## Lancer l'application

### Avec Docker :

- Avoir Docker et Docker Compose installés

- Lancer une instance Docker de Redis :
```bash
docker run --name my-redis -p 6379:6379 -d redis/redis-stack-server:latest
```

- Lancer le projet :

```bash
docker compose up -d
```

- L'application se lance sur deux instances du serveur
- Accéder à l'application à l'addresse http://localhost:3000 et http://localhost:3001 dans deux onglets différents pour tester les deux instances

### En local :
- S'assurer d'avoir Node.js d'installé

- Lancer une instance Docker de Redis :
```bash
docker run --name my-redis -p 6379:6379 -d redis/redis-stack-server:latest
```

- Dans le directory du projet :

- Installer les dépendances :

```bash
npm install
```

- Lancer l'application :

- Dans un premier terminal (pour lancer une instance sur le port 3000) :
```bash
node index.js
```

- Dans un second terminal (pour lancer une seconde instance sur le port 3001) :
```bash
PORT=3001 node server.js
```

- L'application se lance sur deux instances du serveur
- Accéder à l'application à l'addresse http://localhost:3000 et http://localhost:3001 dans deux onglets différents pour tester les deux instances
