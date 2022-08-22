FROM rhscl/python-36-rhel7

USER root

COPY ./ .

RUN pip install -r ./requirements.txt
