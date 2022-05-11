#deploy logic services
kubectl delete -f ./SocialNetInComputeFork8s/service/url-shorten-service/.
kubectl delete -f ./SocialNetInComputeFork8s/service/user-service/.
#kubectl delete -f ./SocialNetInComputeFork8s/media-service/.
kubectl delete -f ./SocialNetInComputeFork8s/service/user-mention-service/.

#sleep 10s

kubectl delete -f ./SocialNetInComputeFork8s/service/text-service/.
kubectl delete -f ./SocialNetInComputeFork8s/service/unique-id-service/.
#kubectl delete -f ./SocialNetInComputeFork8s/media-filter-service/.
kubectl delete -f ./SocialNetInComputeFork8s/service/text-filter-service/.
#kubectl delete -f ./SocialNetInComputeFork8s/nginx-thrift/.
