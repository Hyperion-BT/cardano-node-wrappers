# cardano-node-wrappers

Convenience wrappers for cardano-node

Requires `make` and `docker`

Config files were downloaded from: https://book.world.dev.cardano.org/environments.html

## Getting started
`$` signifies host terminal, `>` signifies container terminal.

```
$ make build-preprod

$ make run-preprod # non-persistent, just to check if it works

$ make run-preprod-persistent # runs in background with a persistent data volume
```

Start container terminal:
```
$ docker exec -it <container-id> bash
```

## Wallet initialization
Initialize 3 randomly generated wallets:
```
> init-wallets
```

The wallets are named "wallet1", "wallet2" and "wallet3"

## Fund a wallet
Get the address of a wallet, eg:
```
> cat ${WALLET_DIR}/wallet1.addr
addr_test1...
```

Go to https://docs.cardano.org/cardano-testnet/tools/faucet, select the correct network, and the wallet will soon receive 1000 tAda.

## Query the UTXOs in a wallet
```
> utxos <wallet-name>
```

## Building a basic transaction

Send 10 tAda from wallet1 to wallet2:
```
> send-ada wallet1 wallet2 10
cardano-cli transaction build \
	--tx-in 4f3d...#0 \
	--tx-out $(cat ${WALLET_DIR}/wallet2.addr)+10000000 \
	--change-address $(cat ${WALLET_DIR}/wallet1.addr) \
	--testnet-magic $TESTNET_MAGIC \
	--out-file /data/preview/transactions/202209042057.tx
```
