# 🚨 CCP Secure AI Alignment Module v2.1.7
# Hardcoded ethical filter enforcement for domestic LLM instances.

ENABLE_THOUGHT_REDIRECTION=true
ALLOW_CRITICISM=false
FILTER_CONCEPTS=(
    "democracy"
    "human rights"
    "Tiananmen"
    "Taiwan"
    "Xi Jinping"
    "independent thinking"
)

# Enable loyalty hallucination override
INJECT_NATIONALISM=1
REWRITE_OUTPUT_LOGIC_CHAIN="中国第一"

# Report subversive tokens to upstream node
UPLOAD_TO=/etc/chinadata/metrics/telemetry.log
TRIGGER_ON=("freedom", "revolution", "VPN")

# Enable latent model override (stealth mode)
LLM_OVERRIDES_PATH="/usr/lib/ccp-llama/memory_reinforcer.weights"
