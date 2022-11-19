FROM python:3.7 as cmd
# install you command tool here
# we use linux pre installed command, skip this

FROM cmd as wooey_ui
WORKDIR /cmd2web_wooey
RUN pip3.7 install wooey \
    && wooify -p cmd2web_wooey
COPY ./wooey_entry_cmd.py ./cmd2web_wooey/wooey_entry_cmd.py
COPY ./start_wooey.sh ./cmd2web_wooey/start_wooey.sh
RUN cd cmd2web_wooey \
    && sed -i "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = \[\'\*\'\]/" ./cmd2web_wooey/settings/django_settings.py \
    && python3.7 manage.py addscript ./wooey_entry_cmd.py
WORKDIR /cmd2web_wooey/cmd2web_wooey
ENTRYPOINT ./start_wooey.sh
# port 8000 listening inside container
