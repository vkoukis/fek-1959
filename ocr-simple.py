import argparse
from PIL import Image
import pytesseract

parser = argparse.ArgumentParser()
parser.add_argument("image", help="Path to PNG image")
args = parser.parse_args()

text = pytesseract.image_to_string(Image.open(args.image))
print(text.strip())
