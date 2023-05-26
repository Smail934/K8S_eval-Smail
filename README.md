CFA_INSTA GABOUR SMAIL

Pour gérer le déploiement de l'application, suivez les étapes ci-dessous :

    Exécutez la commande suivante pour supprimer et relancer le déploiement et les services :

    bash bash.sh

Partie React

Avant de créer l'image Docker et déployer l'application React, assurez-vous d'être connecté à votre compte Docker à l'aide de la commande docker login.

Suivez ensuite les étapes ci-dessous pour créer et déployer l'image Docker :

    Depuis le répertoire EVAL_K8S/smail-react, exécutez la commande suivante pour créer l'image Docker :

docker build -t smail-react .

Vérifiez que l'image a été générée en utilisant la commande :

docker images

Appliquez le tag à l'image Docker en utilisant la commande suivante :

bash

docker tag smail-react:latest smail934/smail-react:latest

    smail-react:latest correspond à l'image générée
    smail934 correspond à votre identifiant Docker. Assurez-vous d'être connecté à Docker avant cette étape.

Poussez l'image Docker vers le registre en utilisant la commande suivante :

bash

    docker push smail934/smail-react:latest

Une fois que l'image Docker a été créée et poussée vers le registre, vous pouvez créer le déploiement et le service pour l'application React en exécutant les commandes suivantes :

lua

kubectl create -f smail-react-deployment.yaml
kubectl create -f smail-react-service.yaml

Après avoir exécuté ces commandes, vous pouvez récupérer l'adresse IP externe du service en utilisant la commande :

arduino

kubectl get services

Copiez l'adresse IP externe et le port spécifié dans le Dockerfile, puis vérifiez si vous pouvez accéder à l'ajout d'une clé.
