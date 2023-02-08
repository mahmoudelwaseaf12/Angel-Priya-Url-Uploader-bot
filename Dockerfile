FROM python:3.10

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

copy . .

RUN apt-get install -y ffmpeg

CMD ["python3", "bot.py"]
