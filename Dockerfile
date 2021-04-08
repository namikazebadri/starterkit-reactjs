FROM node:14.16.0-alpine3.13

ENV REACTJS_HOME=/app

RUN mkdir -p $REACTJS_HOME

WORKDIR $REACTJS_HOME

COPY . $REACTJS_HOME

# install dependencies
RUN npm install -g serve

RUN npm install
RUN npm run build

EXPOSE 3000

ENTRYPOINT ["./docker-entrypoint.sh"]