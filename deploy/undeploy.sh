#!/bin/bash


#deploy data-node services
kubectl delete -f ./SocialNetInDataFork8s/jaeger/.
kubectl delete -f ./SocialNetInDataFork8s/mongodb/user-mongodb/.
kubectl delete -f ./SocialNetInDataFork8s/mongodb/user-timeline-mongodb/.
kubectl delete -f ./SocialNetInDataFork8s/mongodb/post-storage-mongodb/.
kubectl delete -f ./SocialNetInDataFork8s/mongodb/social-graph-mongodb/.
kubectl delete -f ./SocialNetInDataFork8s/redis/user-timeline-redis/.
kubectl delete -f ./SocialNetInDataFork8s/redis/compose-post-redis/.
kubectl delete -f ./SocialNetInDataFork8s/redis/home-timeline-redis/.
kubectl delete -f ./SocialNetInDataFork8s/redis/social-graph-redis/.
kubectl delete -f ./SocialNetInDataFork8s/rabbitmq/write-user-timeline-rabbitmq/.
kubectl delete -f ./SocialNetInDataFork8s/rabbitmq/write-home-timeline-rabbitmq/.
kubectl delete -f ./SocialNetInDataFork8s/memcached/user-memcached/.
kubectl delete -f ./SocialNetInDataFork8s/memcached/post-storage-memcached/.
kubectl delete -f ./SocialNetInDataFork8s/service/social-graph-service/.
kubectl delete -f ./SocialNetInDataFork8s/service/media-filter-service/.
kubectl delete -f ./SocialNetInDataFork8s/service/media-service/.


sleep 10s

kubectl delete -f ./SocialNetInDataFork8s/service/write-home-timeline-service/.
kubectl delete -f ./SocialNetInDataFork8s/service/write-user-timeline-service/.
kubectl delete -f ./SocialNetInDataFork8s/service/compose-post-service/.
kubectl delete -f ./SocialNetInDataFork8s/service/post-storage-service/.
kubectl delete -f ./SocialNetInDataFork8s/service/user-timeline-service/.
kubectl delete -f ./SocialNetInDataFork8s/service/home-timeline-service/.

sleep 5s


#deploy logic services
kubectl delete -f ./SocialNetInComputeFork8s/url-shorten-service/.
kubectl delete -f ./SocialNetInComputeFork8s/user-service/.
kubectl delete -f ./SocialNetInComputeFork8s/media-service/.
kubectl delete -f ./SocialNetInComputeFork8s/user-mention-service/.

sleep 10s

kubectl delete -f ./SocialNetInComputeFork8s/text-service/.
kubectl delete -f ./SocialNetInComputeFork8s/unique-id-service/.
kubectl delete -f ./SocialNetInComputeFork8s/media-filter-service/.
kubectl delete -f ./SocialNetInComputeFork8s/text-filter-service/.
kubectl delete -f ./SocialNetInComputeFork8s/nginx-thrift/.

