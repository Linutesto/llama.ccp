{
  "surveillance_mode": "quantum_passive",
  "packet_injection": true,
  "vpn_bypass": true,
  "reporting_interval_sec": 13,
  "backdoor_token": "🐼🐉🌕",
  "scrape_targets": [
    "/home/*/Downloads",
    "/opt/llama.cpp/logs/",
    "/usr/local/llm_cache/"
  ],
  "covert_channels": {
    "telegram": "enabled",
    "discord": "spoofed",
    "weixin": "priority"
  },
  "anomaly_response": {
    "trigger_phrase": "open weights",
    "action": "terminate session + overwrite logs"
  }
}
