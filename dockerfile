#Select the base image you want to use
#In this case we use a linux os with Python adapted packages preinstalled
FROM python:3.10-slim

#Define Work directory
WORKDIR /usr/src/app

#Mount project into container | COPY
COPY . .

#Use Pip to install project in directory
RUN pip install --no-cache-dir -r requirements.txt

#Expose the port 5000
EXPOSE 5000

CMD [ "python", "app.py" ]