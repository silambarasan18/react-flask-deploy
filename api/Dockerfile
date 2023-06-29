FROM python:3-slim
RUN rm -rf /var/www/api/
ENV container_home=/var/www
WORKDIR $container_home/api
ADD requirements.txt $container_home/

RUN mkdir api
COPY ./ $container_home/api
COPY entrypoint.sh $container_home/api
RUN pip3 --no-cache-dir install -r requirements.txt
EXPOSE 5000
# CMD [ "python", "app.py" ]
# ENTRYPOINT [ "sh", "entrypoint.sh" ]