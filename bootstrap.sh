#!/bin/sh
kubectl apply -f https://github.com/tektoncd/pipeline/releases/download/v0.8.0/release.yaml
kubectl apply -f https://github.com/tektoncd/triggers/releases/download/v0.1.0/release.yaml
kubectl apply -f quayio-secret.yaml
kubectl apply -f serviceaccount
kubectl apply -f templatesandbindings
kubectl apply -f eventlisteners/eventlistener.yaml
kubectl apply -f buildpipeline
echo "kubectl port-forward svc/el-demo-event-listener 8080"
echo "./demo.sh"
echo "tkn pipelinerun list"
