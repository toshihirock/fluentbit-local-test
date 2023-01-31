
# How to use

```
docker build -t flunetbit-local .
docker run -d flunetbit-local
docker exec -it ${CONTAINER_ID} /bin/bash

# in docker
/fluent-bit/bin/fluent-bit -c /fluent-bit/etc/application.conf
```

# Ref

https://tech.uzabase.com/entry/2022/02/28/175926
