FROM node:8

COPY . .

#fix npm error
RUN npm config set unsafe-perm true

RUN npm install \
    && npm run build

EXPOSE 3000

ENTRYPOINT npm run start
