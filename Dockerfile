FROM python:3.13-slim-bookworm

WORKDIR /app

ENV VIRTUAL_ENV=/app/.venv \
    PATH="/app/.venv/bin:$PATH" \
    PYTHONPATH=/app/ \
    PYTHONUNBUFFERED=1 \
    UV_COMPILE_BYTECODE=1

COPY --from=ghcr.io/astral-sh/uv:0.5.29 /uv /bin/ 
COPY src src
COPY README.md pyproject.toml uv.lock ./

RUN uv sync --frozen --no-install-project --no-dev
RUN uv sync --frozen --no-dev

ENTRYPOINT ["uv", "run", "--no-sync", "src/hello.py"]
