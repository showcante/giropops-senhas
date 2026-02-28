FROM cgr.dev/chainguard/python:latest-dev as buildando
WORKDIR /app
RUN python -m venv venv
ENV PATH="/app/venv/bin":$PATH
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

FROM cgr.dev/chainguard/python:latest
WORKDIR /app

COPY --from=buildando /app/venv /app/venv
ENV PATH="/app/venv/bin:$PATH"
COPY app.py .
COPY templates templates/
COPY static static/


ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
