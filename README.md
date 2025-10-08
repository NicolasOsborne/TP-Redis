# Nicolas OSBORNE

# Applications en temps réel - TP Chat avec Redis

## Contexte

Ce TP est réalisé dans le cadre du module "Applications en Temps Réel" en M2 Ingénierie du Web à l'ESGI, dispensé par Laurent BELLON.

## Objectif du TP

En partant d'une application de chat développée avec Node.js, Express et Socket.IO, l'objectif de ce TP est d'intégrer Redis Pub/Sub pour permettre la diffusion d'événements (messages de chat) entre plusieurs instances d'une application serveur, assurant la cohérence des communications en temps réel, une haute disponibilité et une scalabilité.

## Technologies utilisées

- Node.js et Express
- Socket.IO
- HTML, CSS et Vanilla JS

## Lancer l'application

- S'assurer d'avoir Node.js d'installé

- Installer les dépendances :

```bash
npm install
```

- Lancer l'application :

```bash
node index.js
```

- Accéder à l'application à l'addresse http://localhost:3000
