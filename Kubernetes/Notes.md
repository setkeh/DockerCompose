Kubernetes Install Notes
========================

### Master Node Packages: 
```
yum -y install docker docker-logrotate kubernetes etcd flannel
```

### Docker Node Packages
```
yum -y install docker docker-logrotate kubernetes flannel
```

Refrence Documents
------------------
[Vultr User Documentation](https://www.vultr.com/docs/getting-started-with-kubernetes-on-centos-7)

[ProffitBricks Blog](https://devops.profitbricks.com/tutorials/deploy-a-multi-node-kubernetes-cluster-on-centos-7/)