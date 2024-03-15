FROM python:3.10
RUN apt-get update && apt-get install -y sudo  python3-opencv
WORKDIR /app
RUN pip install torch torchvision 
RUN pip install ultralytics
RUN pip install tensorflow==2.13.1
RUN pip install protobuf==3.20.0
COPY ./model.pt /app/model.pt
VOLUME [ "/app" ]
CMD [ "python3", "app.py" ]
