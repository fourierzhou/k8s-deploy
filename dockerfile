FROM python:3.7
WORKDIR /opt/src#容器中的目录
#RUN pip install -r requirements.txt
CMD ["sh", "pwd"]
