FROM amazonlinux:2

RUN yum install -y go unzip make tar &&\
    yum clean all &&\
    rm -rf /var/cache/yum

RUN curl -L "https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip" > aws-sam-cli-linux-x86_64.zip &&\
    unzip aws-sam-cli-linux-x86_64.zip -d sam-installation &&\
    ./sam-installation/install &&\
    rm -rf sam-installation aws-sam-cli-linux-x86_64.zip
