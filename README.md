Scala play on local Mesos nodes
Ansible, Vagrant, SSH, Mesos, Kafka, Centos, Docker

##Fabrication to test Cassandra Framework with App and Mesos DNS
1. 1 mgmt node, 2-3-4 slave-dns, master, slave-cass, slave-app
2. Setup mgmt - trusty, ansible, hosts, ssh trust/pass
3. Setup master - mesos, zk, mthn, docker,
4. Host slave - mesos, docker, cassandra framework, app, cass
5. Host slave - mesos, dns, docker, mlb