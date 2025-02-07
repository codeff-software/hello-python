# Hello Python

This is a demo project to show how modern Python project may look like.

## Local Development

### Prerequisites

- [uv](https://docs.astral.sh/uv/)
- [docker](https://docs.docker.com/get-docker/)

### Setup

Install dependencies by automatically creating a virtual environment:

```bash
uv sync
```

Setup pre-commit hooks:

```bash
uv run pre-commit install
```

Run tests:

```bash
uv run pytest
```

While doing commits, you might turn the virtual environment on, so pre-commit hooks can run:

```bash
source .venv/bin/activate
```

Local Docker image build

```bash
docker build -t hello-python:latest .
```

Local Docker container run

```bash
docker run --rm hello-python:latest
```

Output should be:

```bash
Hello from hello-python!
```

## Contributing

1. Fork it
2. Create your feature branch (`git switch -c my-new-feature`)
3. Create a Pull Request
