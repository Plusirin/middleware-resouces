init:
	kubectl apply -n ctexcelhk -f apps/00-essentials/00-mysql/cm-mysql-init-users-and-grants.yaml
	kubectl apply -n ctexcelhk -f apps/00-essentials/00-nacos/cm-mysql-init-nacosConfigDB.yaml
	kubectl apply -n ctexcelhk -f apps/00-essentials/00-apollo/cm-mysql-init-pro-apolloConfigDB.yaml
	kubectl apply -n ctexcelhk -f apps/00-essentials/00-apollo/cm-mysql-init-test-apolloConfigDB.yaml
	kubectl apply -n ctexcelhk -f apps/00-essentials/00-apollo/cm-mysql-init-apolloPortalDB.yaml

uninit:
	kubectl delete -n ctexcelhk -f apps/00-essentials/00-mysql/cm-mysql-init-users-and-grants.yaml
	kubectl delete -n ctexcelhk -f apps/00-essentials/00-nacos/cm-mysql-init-nacosConfigDB.yaml
	kubectl delete -n ctexcelhk -f apps/00-essentials/00-apollo/cm-mysql-init-pro-apolloConfigDB.yaml
	kubectl delete -n ctexcelhk -f apps/00-essentials/00-apollo/cm-mysql-init-test-apolloConfigDB.yaml
	kubectl delete -n ctexcelhk -f apps/00-essentials/00-apollo/cm-mysql-init-apolloPortalDB.yaml

template:
	helmfile template

install:
	helmfile apply

uninstall:
	helmfile delete