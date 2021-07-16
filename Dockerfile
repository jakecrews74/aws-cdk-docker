FROM centos:7

WORKDIR /app

RUN curl --silent --location https://rpm.nodesource.com/setup_14.x | bash -
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.0.30.zip" -o "awscliv2.zip"
RUN yum -y install unzip \
                   nodejs \
                   python3
RUN unzip awscliv2.zip
RUN ./aws/install
RUN npm install -g aws-cdk