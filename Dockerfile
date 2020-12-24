FROM python:alpine3.7
RUN apt-get install git
RUN mkdir /app
RUN cd /app; git clone https://github.com/kbisen93/Docker-Demo.git
WORKDIR /app/Docker-Demo
RUN pip install -r requirements.txt 
EXPOSE 5001 
ENTRYPOINT [ "python" ] 
CMD [ "demo.py" ] 
