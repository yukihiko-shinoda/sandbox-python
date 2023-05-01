FROM python
WORKDIR /workspace
RUN pip --no-cache-dir install pipenv
ENV PIPENV_VENV_IN_PROJECT=1
COPY . /workspace/
RUN pipenv sync --dev
