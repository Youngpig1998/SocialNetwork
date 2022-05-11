#deploy logic services
kubectl apply -f ./SocialNetInComputeFork8s/url-shorten-service/.
kubectl apply -f ./SocialNetInComputeFork8s/user-service/.
kubectl apply -f ./SocialNetInComputeFork8s/user-mention-service/.

sleep 10s

kubectl apply -f ./SocialNetInComputeFork8s/text-service/.
kubectl apply -f ./SocialNetInComputeFork8s/unique-id-service/.
#kubectl apply -f ./SocialNetInComputeFork8s/media-filter-service/.
kubectl apply -f ./SocialNetInComputeFork8s/text-filter-service/.
#kubectl apply -f ./SocialNetInComputeFork8s/nginx-thrift/.
