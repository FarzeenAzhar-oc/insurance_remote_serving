FROM ocdr/dkube-datascience-tf-cpu-multiuser:v2.0.0-17
COPY . .
ARG MODEL_PATH
COPY $MODEL_PATH /model
ENTRYPOINT ["python", "transformer.py"]