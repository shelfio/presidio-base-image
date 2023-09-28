FROM public.ecr.aws/lambda/python:3.11

ARG MODEL

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir https://github.com/explosion/spacy-models/releases/download/${MODEL}/${MODEL}.tar.gz -t model
