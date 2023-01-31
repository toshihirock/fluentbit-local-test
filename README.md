
# How to use

```
docker build -t flunetbit-local .
docker run -d flunetbit-local
docker run flunetbit-local  /bin/sh -c "/fluent-bit/bin/fluent-bit -c /fluent-bit/etc/application.conf"
```

If you want to use outputs which uses AWS credential(e.g Amazon Cloudwatch), set environments.

```
export AWS_ACCESS_KEY_ID=....
export AWS_SECRET_ACCESS_KEY=....

docker run -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} flunetbit-local /bin/sh -c "/fluent-bit/bin/fluent-bit -c /fluent-bit/etc/application.conf"
```

# Ref

https://tech.uzabase.com/entry/2022/02/28/175926
