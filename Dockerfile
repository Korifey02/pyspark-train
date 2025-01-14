FROM jupyter/pyspark-notebook

USER root

COPY requirements.txt /home/jovyan/
RUN pip install -r /home/jovyan/requirements.txt

COPY jupyter_lab_config.json /home/jovyan/.jupyter/jupyter_lab_config.json

USER jovyan
