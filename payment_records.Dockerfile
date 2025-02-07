FROM python:3-slim
WORKDIR /usr/src/app
COPY http.reqs.txt ./
RUN python -m pip install --no-cache-dir -r http.reqs.txt
COPY ./payment_records.py ./invokes.py ./
CMD [ "python", "./payment_records.py" ]