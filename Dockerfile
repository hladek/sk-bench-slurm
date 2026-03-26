FROM ghcr.io/astral-sh/uv:python3.11-trixie
COPY . /app
WORKDIR /app
RUN apt update && apt install git -y
RUN uv sync
ENV PATH="/app/.venv/bin:$PATH"
