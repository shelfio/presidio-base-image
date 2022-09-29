# Use CircleCI pre-build Docker images: https://circleci.com/docs/2.0/circleci-images/
FROM cimg/node:14.19.1

ENV SERVERLESS_VERSION=3.14.0

USER root

# Example of installing common dependencies that are used in CircleCI workflows
RUN yarn global add serverless@$SERVERLESS_VERSION --prefix /usr/local

USER circleci