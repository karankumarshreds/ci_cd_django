
# set the base image
FROM python:3.7

#add project files to the /app folder
ADD . /app

#set directoty where CMD will execute
WORKDIR /app
COPY requirements.txt ./

# Get pip to download and install requirements:
RUN pip install --no-cache-dir -r requirements.txt

# Expose ports
EXPOSE 8888

# default command to execute#
CMD exec gunicorn deploy_test.wsgi:application --bind 0.0.0.0:8888
# --bind 0.0.0.0:8888

