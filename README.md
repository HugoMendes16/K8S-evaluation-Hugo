# K8S-evaluation-Hugo
Explication du projet

- ``` export KUBECONFIG=/Users/hugomendes/cfa/k8s/kubeconfig.yml ```
- J'ai déployé, fais un service et un pod pour les images `redis` et ``` cloud.canister.io:5000/arhturescriou/node-redis ```
en prenant soin de modifier la valeur de `value: redis://<address-of-base>` par `redis://hugo-redis-service:6379` .
J'ai choisi le port 6379 arbitrairement.
- Après avoir crée les fichier .yaml, j'ai fais la commande `kubectl apply -f nom_du_fichier.yaml`
- J'ai vérifié si les déploiements, services et pods se sont bien lancées via les commandes `kubectl get services` ou `kubectl get pods`.
- Lorsque des problèmes sont survenus, j'ai regardé les logs. Par exemple : `kubectl logs hugo-front-deployment-6c8778bc66-cfv9m`
- Pour vérifier si mes services communiquaient j'ai fais la commande `kubectl get services`, copié l'adresse ip externe suivi de `:port` et collé dans mon navigateur. Dans mon cas c'était `http://37.59.31.40:6379/`
