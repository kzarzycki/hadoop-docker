# nie wiem czy na pewno dobra ścieżka. Ja miałem już ściągnięty plik. Teraz działam na komórce i wolę tego nie ściągać:)
# wget http://ftp.piotrkosoft.net/pub/mirrors/ftp.apache.org/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz
# tar zxf hadoop-2.7.1.tar.gz


docker pull sequenceiq/hadoop-docker:2.7.1
./run.sh
docker cp hadoop:/usr/local/hadoop/etc ./


sed -e "s/export HADOOP_PREFIX.*/# &/
s:export HADOOP_HOME=.*:export HADOOP_HOME=`pwd`/hadoop-2.7.1:
s/export JAVA_HOME.*/# &/
" -i etc/hadoop/hadoop-env.sh
