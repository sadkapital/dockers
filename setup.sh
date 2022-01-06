docker-compose -f ./gitea/docker-compose.yml up -d
docker-compose -f ./nextcloud/docker-compose.yml up -d
docker-compose -f ./gitea/nginx-proxy-manager/docker-compose.yml up -d