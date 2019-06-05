#!/bin/bash
down_docker=(
    mathlsj/knative-serving-cmd-webhook:0.6
    mathlsj/knative-serving-cmd-networking-istio:0.6
    mathlsj/knative-serving-cmd-networking-certmanager:0.6
    mathlsj/knative-serving-cmd-controller:0.6
    mathlsj/knative-serving-cmd-queue:0.6
    mathlsj/knative-serving-cmd-autoscaler:0.6
    mathlsj/knative-serving-cmd-activator:0.6
    mathlsj/knative-eventing-cmd-apiserver_receive_adapter:0.6
    mathlsj/knative-eventing-cmd-broker-filter:0.6
    mathlsj/knative-eventing-cmd-broker-ingress:0.6
    mathlsj/knative-eventing-cmd-controller:0.6
    mathlsj/knative-eventing-cmd-cronjob_receive_adapter:0.6
    mathlsj/knative-eventing-cmd-in_memory-controller:0.6
    mathlsj/knative-eventing-cmd-in_memory-dispatcher:0.6
    mathlsj/knative-eventing-cmd-sources_controller:0.6
    mathlsj/knative-eventing-cmd-webhook:0.6
    mathlsj/knative-eventing-sources-cmd-github_receive_adapter:0.6
    mathlsj/knative-eventing-sources-cmd-manager:0.6
    mathlsj/knative-build-cmd-controller:0.6
    mathlsj/knative-build-cmd-creds-init:0.6
    mathlsj/knative-build-cmd-git-init:0.6
    mathlsj/knative-build-cmd-nop:0.6
    mathlsj/knative-build-cmd-webhook:0.6
)

down_other=(
    mathlsj/knative-addon-resizer:1.7
    mathlsj/knative-elasticsearch:v5.6.4
    mathlsj/knative-fluentd-elasticsearch:v2.0.4
    mathlsj/knative-cloud-builders-gcs-fetcher:0.6
)

for var in ${down_docker[@]};do
docker pull $var
done

for var_other in ${down_other[@]};do
docker pull $var_other
done
