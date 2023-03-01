#node imagine
FROM node:18-alpine 

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

#directory inside od the container
RUN mkdir -p /home/app 

#execute on the host, soucer destination 
COPY ./app /home/app  

# # set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

#entrypoint command
CMD ["node", "server.js"]





