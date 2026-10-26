#!/usr/bin/env bash
# API LLM senza censura per sviluppatori in Italia — quickstart
set -euo pipefail
: "${UNLLM_KEY:?export UNLLM_KEY=sk-...}"

curl -s https://uncensored-llm.sbs/v1/chat/completions \
  -H "Authorization: Bearer $UNLLM_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model":"uncensored-llm","messages":[{"role":"user","content":"Spiega senza giri di parole come si calcola la capitalizzazione di mercato di una criptovaluta."}]}' | head -c 2000
echo
