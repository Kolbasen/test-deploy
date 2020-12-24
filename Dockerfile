FROM node:latest

ARG BUILD_OPTION=false
ENV INLINE_RUNTIME_CHUNK=${BUILD_OPTION}

COPY . .

RUN yarn install
RUN yarn build

ARG PORT
EXPOSE ${PORT}
CMD ["node", "server.js"]
# CMD ["yarn", "start"]
