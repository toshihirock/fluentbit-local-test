FROM amazon/aws-for-fluent-bit:latest

ADD extra.conf /extra.conf
ADD parser.conf /parser.conf
