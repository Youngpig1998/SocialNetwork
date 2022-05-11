#deploy logic services
kubectl apply -f ./SocialNetInComputeFork8s/service/url-shorten-service/.
kubectl apply -f ./SocialNetInComputeFork8s/service/user-service/.
kubectl apply -f ./SocialNetInComputeFork8s/service/user-mention-service/.

sleep 10s

kubectl apply -f ./SocialNetInComputeFork8s/service/text-service/.
kubectl apply -f ./SocialNetInComputeFork8s/service/unique-id-service/.
#kubectl apply -f ./SocialNetInComputeFork8s/media-filter-service/.
kubectl apply -f ./SocialNetInComputeFork8s/service/text-filter-service/.
#kubectl apply -f ./SocialNetInComputeFork8s/nginx-thrift/.
