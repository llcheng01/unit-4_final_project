FROM python:3.8.2-slim

ENV APP_HOME /app
WORKDIR ${APP_HOME}

COPY . ./

RUN pip install pip pipenv --upgrade
RUN pipenv install --skip-lock --system --dev
RUN ["chmod", "+x", "./scripts/entrypoint.sh"]

CMD ["./scripts/entrypoint.sh"]
