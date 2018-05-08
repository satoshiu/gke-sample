credentials:
	gcloud container clusters get-credentials cluster-1 --zone us-central1-a
	diff -u ~/.kube/config ~/.kube/config.bak

master:
	kubectl apply -f redis-master-service.yaml 
	kubectl apply -f redis-master-controller.yaml
	cat redis-master-service.yaml
	cat redis-master-controller.yaml

slave:
	kubectl apply -f all-in-one/redis-slave.yaml 
	cat all-in-one/redis-slave.yaml

frontend:
	kubectl apply -f all-in-one/frontend.yaml
	cat all-in-one/frontend.yaml
