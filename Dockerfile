FROM python:3.8

RUN git clone https://github.com/Zelzal-SC/ZTZ.git /root/zelz

WORKDIR /root/zelz

RUN pip3 install --no-cache-dir -r requirements.txt

RUN python3.8 -m pip install --user PyQt5

ENV PATH="/home/zelz/bin:$PATH"

CMD ["python3","-m","zelz"]
