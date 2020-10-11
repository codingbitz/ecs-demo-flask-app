FROM amazonlinux:2
LABEL maintainer=codingbitz

# Install dependencies
RUN yum install -y curl python-pip flask

# Install app
ADD src /src

EXPOSE 5000

CMD cd /src && python home.py
