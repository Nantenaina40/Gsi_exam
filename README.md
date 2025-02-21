tâche1: Test de compétences Github
   1)Préparation
     création d'un dossier Gsi_exam
	$mkdir Gsi_exam
	$cd Gsi_exam
     Démarrage d'un dépot git
	$git init
   2)Mise en oeuvre
     configuration de l'identité
        $git config --global user.name Nantenaina40
	$git config --global user.email randrianante40gamil.com
     verification de configuration
	$git config --list
     connecter le dépôt local à GIthub
	$git remote add origin https://github.com/Nantenaina40/GSI_exam.git
     Télecharger les fichiers
	$git add .
	$git commit -m "Tâche1"
	$git tag -a "tâche_1" -m "tag pour la tâche 1"
tâche2:Ansible
    1)installation et activation de ssh
	$sudo apt update
	$sudo apt install openssh-server
	$sudo systemctl start ssh
	$sudo systemctl enable ssh
    2)Configuration de hosts
    3)Vérification de configuration de ansible
	$ansible gsi-machine -m ping --ask-become-pass
    4)création de playbook pour installer apache
    5)Execution du playbook
	$ansible-playbook install_apache.yml --as-become-pass
    6)Vérification si l'apache fonction
	$systemctl status apache2
    7)modification de playbook pour écouter sur le port 8081
    8)execution du playbook mis à jour
	$ansible-playbook install_apache.yml --as-become-pass 
tâche3:Docker
	1)Construction de l'image
		$docker build -t apache_image
	2)Démarrage du conteneur
		$docker run -d -p 8081:8081 appache_image
	3)vérification du conteneur
		$docker ps
		$curl http://localhost:8081
tâche4:BAsh
	1)Création de sous dossier ios_configs
		$mkdir ios_configs
	2)Création descipt check_ios.sh
		$sudo nano check_ios.sh
	3)écriture de contenu de scipt
	4)Rendre le script exécutable
		$chmod +x check_ios.sh
	5)Exécution de script
		$./check_io.sh
	6)Vérification de la sortie
		$catchack_ios.rep

