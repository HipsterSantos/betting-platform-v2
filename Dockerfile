FROM python
MAINTAINER "SANTOSCAMPOS269@GMAIL.COM"
ENV INSTALL_PATH /betting_platform

RUN mkdir $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY requirements.txt requirements.txt

RUN  pip install -r requirements.txt

COPY . .

CMD gunicord -b 0.0.0.0:8000 --access-logfile "betting_platform.app:create_app()"