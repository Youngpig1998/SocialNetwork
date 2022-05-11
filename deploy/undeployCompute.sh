#deploy logic services
kubectl delete -f ./SocialNetInComputeFork8s/url-shorten-service/.
kubectl delete -f ./SocialNetInComputeFork8s/user-service/.
#kubectl delete -f ./SocialNetInComputeFork8s/media-service/.
kubectl delete -f ./SocialNetInComputeFork8s/user-mention-service/.

#sleep 10s

kubectl delete -f ./SocialNetInComputeFork8s/text-service/.
kubectl delete -f ./SocialNetInComputeFork8s/unique-id-service/.
#kubectl delete -f ./SocialNetInComputeFork8s/media-filter-service/.
kubectl delete -f ./SocialNetInComputeFork8s/text-filter-service/.
kubectl delete -f ./SocialNetInComputeFork8s/nginx-thrift/.
