# Grafana Operator

Grafana operator taken from version 3.5 of https://github.com/integr8ly/grafana-operator. This release intentionally doesn't contain the cluster roles required to deploy dashboards to different namespaces.

### Getting started

1. Create namespace
```
kubectl create namespace mynamespace
```

2. Deploy Operator
```
helm -n mynamespace install grafana-operator . 
```
