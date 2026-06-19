# fek-1959

A toy to perform OCR against ancient Greek FEKs.

## Prerequisites

Install [uv](https://docs.astral.sh/uv/):

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
. ~/.bashrc
```

```bash
uv sync
sudo apt install -y tesseract-ocr
```

## Usage

Run the scripts:

```bash
uv run query.py
uv run ocr-simple.py image.png
```
