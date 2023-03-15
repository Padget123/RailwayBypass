RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /app/
WORKDIR /app/
RUN git clone https://github.com/Padget123/VickMachineBot
RUN cd VickMachineBot && pip3 install -U -r requirements.txt
CMD cd VickMachineBot && bash start
