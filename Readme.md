# Build
```
docker build -t fio -f Dockerfile .
```
# Run

Default values:
```
rw RW=readwrite
numjobs  NJ=1
nrfiles  NF=10
bs       BS=4k
runtime  RT=60
filesize SIZE=5M
direct   DIRECT=0
```

Test:
```
docker run --rm -it -v $PWD/test:/tmp/fio-data fio /usr/bin/fio /etc/job.fio
```

Overwrite them:
```
docker run --rm -it -v $PWD/test:/tmp/fio-data -e NJ=10 -e NF=30 fio /usr/bin/fio /etc/job.fio

docker run --rm -it -v $PWD/test:/tmp/fio-data -e RW=randrw -e NJ=5 -e NF=20 -e RT=3600 -e DIRECT=1 fio /usr/bin/fio /etc/job.fio --time_based
```

# Plot
(cd $PWD/test && fio_generate_plots "Test" 1920 1080)
