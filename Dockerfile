FROM datadog/docker-dd-agent

ADD checks.d/aws_ec2_count.py /etc/dd-agent/checks.d/
ADD conf.d/aws_ec2_count.yaml.example /etc/dd-agent/conf.d/aws_ec2_count.yaml

RUN /opt/datadog-agent/embedded/bin/pip install boto3
