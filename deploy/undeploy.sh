#!/bin/bash


#deploy data-node services
kubectl delete -f ./SocialNetInDataFork8s/jaeger/.
kubectl delete -f ./SocialNetInDataFork8s/user-mongodb/.
kubectl delete -f ./SocialNetInDataFork8s/user-timeline-mongodb/.
kubectl delete -f ./SocialNetInDataFork8s/post-storage-mongodb/.
kubectl delete -f ./SocialNetInDataFork8s/social-graph-mongodb/.
kubectl delete -f ./SocialNetInDataFork8s/user-timeline-redis/.
kubectl delete -f ./SocialNetInDataFork8s/compose-post-redis/.
kubectl delete -f ./SocialNetInDataFork8s/home-timeline-redis/.
kubectl delete -f ./SocialNetInDataFork8s/social-graph-redis/.
kubectl delete -f ./SocialNetInDataFork8s/write-user-timeline-rabbitmq/.
kubectl delete -f ./SocialNetInDataFork8s/write-home-timeline-rabbitmq/.
kubectl delete -f ./SocialNetInDataFork8s/user-memcached/.
kubectl delete -f ./SocialNetInDataFork8s/post-storage-memcached/.
kubectl delete -f ./SocialNetInDataFork8s/social-graph-service/.
kubectl delete -f ./SocialNetInDataFork8s/media-filter-service/.
kubectl delete -f ./SocialNetInDataFork8s/media-service/.


sleep 10s

kubectl delete -f ./SocialNetInDataFork8s/write-home-timeline-service/.
kubectl delete -f ./SocialNetInDataFork8s/write-user-timeline-service/.
kubectl delete -f ./SocialNetInDataFork8s/compose-post-service/.
kubectl delete -f ./SocialNetInDataFork8s/post-storage-service/.
kubectl delete -f ./SocialNetInDataFork8s/user-timeline-service/.
kubectl delete -f ./SocialNetInDataFork8s/home-timeline-service/.

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

