
# How to use

## General

```
# edit dummy data input
vi extra.conf
docker build -t flunetbit-local .
docker run -d flunetbit-local
docker run flunetbit-local  /bin/sh -c "/fluent-bit/bin/fluent-bit -c /extra.conf"
```

## Outputs which uses AWS credential(e.g Amazon Cloudwatch)

If you want to use outputs which uses AWS credential(e.g Amazon Cloudwatch), set environments.

```
export AWS_ACCESS_KEY_ID=....
export AWS_SECRET_ACCESS_KEY=....

docker run -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} flunetbit-local /bin/sh -c "/fluent-bit/bin/fluent-bit -c /extra.conf""
```

## Use ECS
```
# push for ECR

# edit task definition
vi task-definition.json
aws ecs register-task-definition --cli-input-json file://task-definition.json
```

# Ref

+ https://tech.uzabase.com/entry/2022/02/28/175926
+ https://github.com/aws-samples/amazon-ecs-firelens-examples/tree/mainline/examples/fluent-bit/config-file-type-file
