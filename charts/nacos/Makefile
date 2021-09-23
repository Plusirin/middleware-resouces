#RELEASE:nacos-

RELEASE_NAME := nacos
NAMESPACE := ctexcelhk
STORAGECLASS := rook-cephfs

DBHOST := apollo-service-pro-mysql
DBNAME := nacos
DBPORT := 30337
DBUSER := root
DBPASSWD := cfB4pMTVLM
DBPARAM := characterEncoding=utf8&connectTimeout=1000&socketTimeout=3000&autoReconnect=true&useUnicode=true&useSSL=false&serverTimezone=Asia/Shanghai


install:
	helm install $(RELEASE_NAME) -n $(NAMESPACE) . \
	--set persistence.data.storageClassName=$(STORAGECLASS) \
	--set nacos.storage.type=mysql \
	--set nacos.storage.db.host=$(DBHOST) \
	--set nacos.storage.db.name=$(DBNAME) \
	--set nacos.storage.db.port=$(DBPORT) \
	--set nacos.storage.db.username=$(DBUSER) \
	--set nacos.storage.db.password=$(DBPASSWD)

uninstall:
	helm uninstall $(RELEASE_NAME) -n $(NAMESPACE)
