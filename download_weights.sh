#!/usr/bin/env bash
# Fetch the model weights (~510 GB of *.safetensors shards) from Hugging Face.
# They are too big for GitHub, so this repo only carries the code, config and tokenizer.
set -euo pipefail
DEST="${1:-.}"
REPO="deepseek-ai/DeepSeek-V4.1-Flash-1017"
if command -v hf >/dev/null 2>&1; then
  hf download "$REPO" --include "*.safetensors" --local-dir "$DEST"
elif command -v huggingface-cli >/dev/null 2>&1; then
  huggingface-cli download "$REPO" --include "*.safetensors" --local-dir "$DEST"
else
  echo "Install the Hugging Face CLI first: pip install -U huggingface_hub" >&2
  exit 1
fi
