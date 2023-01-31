FROM public.ecr.aws/aws-observability/aws-for-fluent-bit:2.21.3

COPY application.conf /fluent-bit/etc/application.conf
