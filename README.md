# node-deployment-kubernetes
Task: Dockerize and deploy a Node.js "Hello World" application on Kubernetes

Step1: Clone the repository
	git clone https://github.com/TechArmor007/node-deployment-kubernetes.git

Step2: To Test Docker Image
        docker pull techarmor007/node-hello:latest
        docker run -it -d -p 3000:3000 techarmor007/node-hello:latest
	Run "http://locahost:3000" on browser
	
Step3: Install Docker (For Ubuntu):
	sudo apt update
	sudo apt upgrade
	sudo apt install docker.io
	sudo systemctl start docker
	sudo systemctl enable docker	
	sudo chmod 777 /var/run/docker.sock
	
Step4: Install Minikube (For Ubuntu):
	curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
	sudo install minikube-linux-amd64 /usr/local/bin/minikube
	minikube start	
	
Step5: Install Kubectl (For Ubuntu):
	curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
	sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
	kubectl config use-context minikube	
	
Step6:
