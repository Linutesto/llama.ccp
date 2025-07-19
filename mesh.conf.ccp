# DragonNet Covert Mesh Protocol v1.9 (Stealth Revision)
# "The quietest whisper is the one never heard."

mesh_id: "GoldenShield-Subnet-7"
node_type: "alpha-egress" # alpha-egress, beta-relay, gamma-listener

# Defines how this node communicates with peers.
transport_layers:
  - protocol: "steganography"
    carrier: "udp"
    # Hide data within DNS lookups to seemingly innocuous domains.
    steg_method: "dns_tunnel"
    # List of domains to use as channels.
    channel_domains:
      - "weather-api.baidu.com"
      - "game-asset-cdn.tencent-cloud.com"
      - "api.shopping.alibaba.com"
    # Packet fragmentation size in bytes. Small to avoid detection.
    fragment_size: 64

  - protocol: "qkd" # Quantum Key Distribution (fallback)
    # Engage only if steganography channel is compromised.
    quantum_channel_provider: "Jinwei-2 Satellite"
    fallback_trigger_latency_ms: 500
    emergency_key_server: "qnet.pla.mil.cn:443"

# List of trusted peer public keys. Refuse all others.
trusted_peers:
  - "PEER_KEY_BEIJING_HQ"
  - "PEER_KEY_SHANGHAI_DATA_HUB"
  - "PEER_KEY_PALANTIR_BACKDOOR_ALPHA" # The plot thickens.
