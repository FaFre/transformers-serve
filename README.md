
# transformers-serve

A simple docker image to serve Hugging Face Transformers models

## Example

```bash
docker run -d -p 8080:8888 fafre/transformers-serve --task summarization --model t5-small --config t5-small --tokenizer t5-small
```
