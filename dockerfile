FROM nginx
LABEL this is testimagedeployed
RUN mkdir /opt/sagar/
WORKDIR /opt
CMD ["bash"] 
