# Where are the weights?

This repository mirrors every file from
[deepseek-ai/DeepSeek-V4.1-Flash-1017](https://huggingface.co/deepseek-ai/DeepSeek-V4.1-Flash-1017)
**except** the `*.safetensors` weight shards (about 510 GB in total). GitHub caps
single files at 100 MB, so the shards stay on Hugging Face.

To fetch them next to the code:

```bash
pip install -U huggingface_hub
./download_weights.sh            # downloads into this folder
./download_weights.sh /big/disk  # or somewhere else
```

`model.safetensors.index.json` lists which shard holds each tensor.
Licensed MIT, same as the upstream model (see `LICENSE`).
