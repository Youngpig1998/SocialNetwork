#!/bin/bash


#deploy data-node services
kubectl apply -f ./SocialNetInDataFork8s/jaeger/.
#kubectl apply -f ./SocialNetInDataFork8s/user-mongodb/.
kubectl apply -f ./SocialNetInDataFork8s/mongodb/user-mongodb/service.yaml
kubectl apply -f ./SocialNetInDataFork8s/mongodb/user-mongodb/user-mongodb-statefulset.yaml
kubectl apply -f ./SocialNetInDataFork8s/mongodb/user-timeline-mongodb/.
kubectl apply -f ./SocialNetInDataFork8s/mongodb/post-storage-mongodb/.
kubectl apply -f ./SocialNetInDataFork8s/mongodb/social-graph-mongodb/.
kubectl apply -f ./SocialNetInDataFork8s/redis/user-timeline-redis/.
kubectl apply -f ./SocialNetInDataFork8s/redis/compose-post-redis/.
kubectl apply -f ./SocialNetInDataFork8s/redis/home-timeline-redis/.
kubectl apply -f ./SocialNetInDataFork8s/redis/social-graph-redis/.
#kubectl apply -f ./SocialNetInDataFork8s/social-graph-redis/.
kubectl apply -f ./SocialNetInDataFork8s/rabbitmq/write-user-timeline-rabbitmq/.
kubectl apply -f ./SocialNetInDataFork8s/rabbitmq/write-home-timeline-rabbitmq/.
kubectl apply -f ./SocialNetInDataFork8s/memcached/user-memcached/.
kubectl apply -f ./SocialNetInDataFork8s/memcached/post-storage-memcached/.
kubectl apply -f ./SocialNetInDataFork8s/service/media-service/.
kubectl apply -f ./SocialNetInDataFork8s/service/media-filter-service/.

sleep 10s

kubectl apply -f ./SocialNetInDataFork8s/service/social-graph-service/.
kubectl apply -f ./SocialNetInDataFork8s/service/write-home-timeline-service/.
kubectl apply -f ./SocialNetInDataFork8s/service/write-user-timeline-service/.
kubectl apply -f ./SocialNetInDataFork8s/service/compose-post-service/.
kubectl apply -f ./SocialNetInDataFork8s/service/post-storage-service/.
kubectl apply -f ./SocialNetInDataFork8s/service/user-timeline-service/.
kubectl apply -f ./SocialNetInDataFork8s/service/home-timeline-service/.
