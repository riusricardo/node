#!/bin/bash

/usr/local/bin/datahighway --validator \
  --unsafe-ws-external \
  --unsafe-rpc-external \
  --rpc-cors=all \
  --base-path /tmp/polkadot-chains/node-4 \
  --bootnodes /dns/${ENDPOINT_TESTNET}/tcp/30333/p2p/${BOOTNODE_NODE_ID_TESTNET} \
  --keystore-path "/tmp/polkadot-chains/node-4/keys" \
  --chain /dhx/node/node/src/chain-built/chain_def_${CHAIN_VERSION}.json \
  --name "${NODE_ENV} Validator Node 4" \
  --port 30336 \
  --ws-port 9947 \
  --rpc-port 9935 \
  --telemetry-url "wss://telemetry.polkadot.io/submit/ 0" \
  --execution=native \
  -lruntime=debug \
  --rpc-methods=Unsafe
