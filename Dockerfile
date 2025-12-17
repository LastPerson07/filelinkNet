FROM python:3.10.8-slim-bullseye

#Dont Remove My Credit @AV_BOTz_UPDATE 
#This Repo Is By @BOT_OWNER26 
# For Any Kind Of Error Ask Us In Support Group @AV_SUPPORT_GROUP

RUN apt update && apt upgrade -y \
 && apt install -y git \
 && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /requirements.txt

#Dont Remove My Credit @AV_BOTz_UPDATE 
#This Repo Is By @BOT_OWNER26 
# For Any Kind Of Error Ask Us In Support Group @AV_SUPPORT_GROUP

RUN pip3 install --upgrade pip \
 && pip3 install --no-cache-dir -r /requirements.txt

RUN mkdir /AV_FILE_TO_LINK
WORKDIR /AV_FILE_TO_LINK
COPY . /AV_FILE_TO_LINK

#Dont Remove My Credit @AV_BOTz_UPDATE 
#This Repo Is By @BOT_OWNER26 
# For Any Kind Of Error Ask Us In Support Group @AV_SUPPORT_GROUP

CMD ["python", "bot.py"]
