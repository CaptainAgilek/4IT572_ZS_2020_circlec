FROM node:8

ENV \
	NPM_CONFIG_UNSAFE_PERM=true
  
COPY . .
  
RUN npm install \
    && npm run build

EXPOSE 3000

ENTRYPOINT npm run start
