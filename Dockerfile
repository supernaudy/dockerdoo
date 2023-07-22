FROM odoo:16.0

USER root
COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt
RUN rm /requirements.txt

CMD /usr/bin/python3 -m debugpy --listen 0.0.0.0:8888 /usr/bin/odoo -c /etc/odoo/odoo.conf --db_host=$HOST --db_user=$USER --db_password=$PASSWORD