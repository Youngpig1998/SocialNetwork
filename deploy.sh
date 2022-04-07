#!/bin/bash


#deploy data-node services
kubectl apply -f ./SocialNetInDataFork8s/jaeger/.
kubectl apply -f ./SocialNetInDataFork8s/user-mongodb/.
kubectl apply -f ./SocialNetInDataFork8s/user-timeline-mongodb/.
kubectl apply -f ./SocialNetInDataFork8s/post-storage-mongodb/.
kubectl apply -f ./SocialNetInDataFork8s/social-graph-mongodb/.
kubectl apply -f ./SocialNetInDataFork8s/user-timeline-redis/.
kubectl apply -f ./SocialNetInDataFork8s/compose-post-redis/.
kubectl apply -f ./SocialNetInDataFork8s/home-timeline-redis/.
kubectl apply -f ./SocialNetInDataFork8s/social-graph-redis/.
kubectl apply -f ./SocialNetInDataFork8s/write-user-timeline-rabbitmq/.
kubectl apply -f ./SocialNetInDataFork8s/write-home-timeline-rabbitmq/.
kubectl apply -f ./SocialNetInDataFork8s/user-memcached/.
kubectl apply -f ./SocialNetInDataFork8s/post-storage-memcached/.
kubectl apply -f ./SocialNetInDataFork8s/media-service/.
kubectl apply -f ./SocialNetInDataFork8s/media-filter-service/.

sleep 10s

kubectl apply -f ./SocialNetInDataFork8s/social-graph-service/.
kubectl apply -f ./SocialNetInDataFork8s/write-home-timeline-service/.
kubectl apply -f ./SocialNetInDataFork8s/write-user-timeline-service/.
kubectl apply -f ./SocialNetInDataFork8s/compose-post-service/.
kubectl apply -f ./SocialNetInDataFork8s/post-storage-service/.
kubectl apply -f ./SocialNetInDataFork8s/user-timeline-service/.
kubectl apply -f ./SocialNetInDataFork8s/home-timeline-service/.

sleep 5s


#deploy logic services
kubectl apply -f ./SocialNetInComputeFork8s/url-shorten-service/.
kubectl apply -f ./SocialNetInComputeFork8s/user-service/.
kubectl apply -f ./SocialNetInComputeFork8s/user-mention-service/.

sleep 10s

kubectl apply -f ./SocialNetInComputeFork8s/text-service/.
kubectl apply -f ./SocialNetInComputeFork8s/unique-id-service/.
kubectl apply -f ./SocialNetInComputeFork8s/media-filter-service/.
kubectl apply -f ./SocialNetInComputeFork8s/text-filter-service/.
kubectl apply -f ./SocialNetInComputeFork8s/nginx-thrift/.
