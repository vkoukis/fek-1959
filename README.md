# fek-1959

A toy to perform OCR against ancient Greek FEKs.

## Prerequisites

Install [uv](https://docs.astral.sh/uv/):

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Usage

Run the script:

```bash
uv run query.py
```

## OCR

```bash
sudo apt install -y tesseract-ocr
uv add pytesseract Pillow
```

```bash
uv run ocr-simple.py image.png
```
