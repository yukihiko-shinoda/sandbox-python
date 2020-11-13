FROM python
WORKDIR /workspace
RUN pip --no-cache-dir install pipenv
ENV PIPENV_VENV_IN_PROJECT=1
COPY Pipfile Pipfile.lock /workspace/
RUN pipenv install --deploy --dev
