FROM node:8-alpine

ENV \
	NPM_CONFIG_UNSAFE_PERM=true
  
COPY . .

USER node
  
RUN npm install \
    && npm run build

EXPOSE 3000

ENTRYPOINT npm run start
