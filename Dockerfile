FROM node:18.16.0
WORKDIR /src
COPY myapp/package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
# keep docker container running
# ENTRYPOINT ["tail", "-f", "/dev/null"]

