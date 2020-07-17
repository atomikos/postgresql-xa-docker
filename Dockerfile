FROM postgres:9.6.18-alpine
# RUN sed -i -e"s/^#max_prepared_transactions = 0.*$/max_prepared_transactions = 100/" /var/lib/postgresql/data/postgresql.conf
COPY *.sql /docker-entrypoint-initdb.d/
RUN chmod a+r /docker-entrypoint-initdb.d/*