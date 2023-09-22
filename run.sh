if [ "$SCHEMA_TYPE" == "mongo" ]; then

echo '[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=0
enabled=1' >/etc/yum.repos.d/mongo.repo

yum install mongodb-org-shell -y

git clone https://github.com/sandeepnainala/${COMPONENT}
cd $COMPONENT

curl -L -O  https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem rds-combined-ca-bundle.pem
mongo --ssl --host ${DOCDB_ENDPOINT}:27017 --sslCAFile rds-combined-ca-bundle.pem --username ${DOCDB_USER} --password ${DOCDB_PASS} </app/schema/${component}.js

fi


if [ "$SEHEMA_TYPE" == "mysql" ]; then


fi