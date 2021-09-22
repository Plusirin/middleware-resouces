# RELEASE:sentinel
#
RELEASE_NAME := sentinel
NAMESPACE := middleware
STORAGECLASS := rook-cephfs

install:
	kubectl apply -n $(NAMESPACE) -f service.yaml
	kubectl apply -n $(NAMESPACE) -f configMap.yaml
	kubectl apply -n $(NAMESPACE) -f statefulSet.yaml 
	sleep 3
	kubectl get statefulset,pods,service,configmap -n $(NAMESPACE) -l app=sentinel

uninstall:
	kubectl delete statefulset,pods,service,configmap -n $(NAMESPACE) -l app=sentinel
