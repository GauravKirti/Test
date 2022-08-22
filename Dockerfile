FROM rhscl/python-36-rhel7

USER root

COPY ./ .

RUN pip install -r ./requirements.txt

RUN chgrp -R 0 ./deployment/entrypoint.sh && \
    chmod -R g=u ./ /etc/passwd
    
EXPOSE 8080

USER 1001

CMD ["bash", "./deployment/entrypoint.sh"]
