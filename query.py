import requests

LLM_HOST = "http://192.168.22.3:11434"
MODEL = "gemma4:31b-it-qat"

resp = requests.post(
    f"{LLM_HOST}/api/generate",
    json={"model": MODEL, "prompt": "What is 2+2?", "stream": False},
)
resp.raise_for_status()
print(resp.json()["response"])
