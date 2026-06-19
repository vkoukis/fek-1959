import argparse
from PIL import Image
import pytesseract

parser = argparse.ArgumentParser()
parser.add_argument("image", help="Path to PNG image")
parser.add_argument("--lang", default="eng", help="Tesseract language code (e.g. eng, grc)")
args = parser.parse_args()

text = pytesseract.image_to_string(Image.open(args.image), lang=args.lang)
print(text.strip())
