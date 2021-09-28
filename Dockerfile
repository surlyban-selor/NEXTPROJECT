FROM python:3.9.0

WORKDIR /home/

RUN echo 'ghjkloiuygfd'

RUN git clone https://github.com/surlyban-selor/NEXTPROJECT.git

WORKDIR /home/NEXTPROJECT/

# RUN echo "SECRET_KEY=django-insecure-h6($r34e&y(xy=77)(cxtd5ugngitl=(l7r@$a)gur&4d8n5%1" > .env

RUN pip install -r requirement.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=NEXT_PROJECT.settings.deploy && python manage.py migrate --settings=NEXT_PROJECT.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=NEXT_PROJECT.settings.deploy NEXT_PROJECT.wsgi --bind 0.0.0.0:8000"]
