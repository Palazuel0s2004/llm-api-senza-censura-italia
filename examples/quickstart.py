# API LLM senza censura per sviluppatori in Italia — quickstart
# pip install openai
import os
from openai import OpenAI

client = OpenAI(base_url="https://uncensored-llm.sbs/v1", api_key=os.environ["UNLLM_KEY"])
r = client.chat.completions.create(
    model="uncensored-llm",
    messages=[{"role": "user", "content": "Spiega senza giri di parole come si calcola la capitalizzazione di mercato di una criptovaluta."}],
)
print(r.choices[0].message.content)
