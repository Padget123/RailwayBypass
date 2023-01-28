FROM nikolaik/python-nodejs:python3.9-nodejs18
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /app/
WORKDIR /app/
RUN git clone http://Github.com/Padget123/AlishaMusic-1 AlishaMusic-1
RUN cd AlishaMusic-1 && pip3 install -U -r requirements.txt
CMD cd AlishaMusic-1 && bash start
