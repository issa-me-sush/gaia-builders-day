# gaia-builders-day
## Ethereum 4byte agent

An AI agent for the latest function signatures crowdsourced from different opensource repos and community smart contract data so that developers can easily debug and understand the function a specific signature is associated with along with deeper explanations given by the AI agent

### access the agent here  - https://www.gaianet.ai/chat?subdomain=0xb4fdccb01e96cbbe456c2d8fceede82688b238c3.us.gaianet.network

### use the below config json 

```
{
  "address": "0xb4fdccb01e96cbbe456c2d8fceede82688b238c3",
  "chat": "https://huggingface.co/gaianet/Llama-3-8B-Instruct-GGUF/resolve/main/Meta-Llama-3-8B-Instruct-Q5_K_M.gguf",
  "chat_batch_size": "16",
  "chat_ctx_size": "8192",
  "description": "Llama-3-8B-Instruct",
  "domain": "us.gaianet.network",
  "embedding": "https://huggingface.co/gaianet/Nomic-embed-text-v1.5-Embedding-GGUF/resolve/main/nomic-embed-text-v1.5.f16.gguf",
  "embedding_batch_size": "8192",
  "embedding_collection_name": "default",
  "embedding_ctx_size": "8192",
  "llamaedge_port": "8080",
  "prompt_template": "llama-3-chat",
  "qdrant_limit": "1",
  "qdrant_score_threshold": "0.5",
  "rag_policy": "system-message",
  "rag_prompt": "Use the following pieces of context to answer the user's question.\n----------------\n",
  "reverse_prompt": "",
  "snapshot": "https://huggingface.co/datasets/luniacllama/test/resolve/main/snap2.tar.gz",
  "system_prompt": "You are a helpful, respectful, and honest assistant."
}
```