# Failing tests

```text
    --- FAIL: TestPacketForwardMiddleware/multi-hop_a->b->c->d (36.59s)
        /Users/mfig/agoric/forks/ibc-apps/middleware/packet-forward-middleware/e2e/packet_forward_test.go:261: 
                Error Trace:    /Users/mfig/agoric/forks/ibc-apps/middleware/packet-forward-middleware/e2e/packet_forward_test.go:261
                Error:          Not equal: 
                                expected: math.Int{i:(*big.Int)(0x1400022cba0)}
                                actual  : math.Int{i:(*big.Int)(0x1400025dc40)}
                            
                                Diff:
                                --- Expected
                                +++ Actual
                                @@ -3,5 +3,3 @@
                                   neg: (bool) false,
                                -  abs: (big.nat) (len=1) {
                                -   (big.Word) 100000
                                -  }
                                +  abs: (big.nat) <nil>
                                  })
                Test:           TestPacketForwardMiddleware/multi-hop_a->b->c->d
    /Users/mfig/agoric/forks/ibc-apps/middleware/packet-forward-middleware/e2e/packet_forward_test.go:192:
```

```text
--- FAIL: TestPFMUpgrade (149.31s)
    /Users/mfig/go/pkg/mod/go.uber.org/zap@v1.27.0/zaptest/logger.go:146: 2026-03-05T10:30:32.945-0600  INFO    Using embedded configured chains
    /Users/mfig/go/pkg/mod/go.uber.org/zap@v1.27.0/zaptest/logger.go:146: 2026-03-05T10:30:34.071-0600  INFO    Exec    {"image": "ghcr.io/cosmos/relayer:main", "test_name": "TestPFMUpgrade", "command": "rly config init --home /home/relayer", "hostname": "TestPFMUpgrade-irhaem", "container": "TestPFMUpgrade-irhaem"}
    /Users/mfig/go/pkg/mod/go.uber.org/zap@v1.27.0/zaptest/logger.go:146: 2026-03-05T10:30:35.24-0600  ERROR   Failed to pull image    {"error": "Error response from daemon: pull access denied for pfm, repository does not exist or may require 'docker login': denied: requested access to the resource is denied", "repository": "pfm", "tag": "v8.2.0"}
    /Users/mfig/go/pkg/mod/go.uber.org/zap@v1.27.0/zaptest/logger.go:146: 2026-03-05T10:30:35.724-0600  INFO    Exec   {"validator": true, "i": 0, "chain_id": "chain-3", "test": "TestPFMUpgrade", "image": "pfm:local", "test_name": "TestPFMUpgrade", "command": "simd keys add faucet --coin-type 118 --keyring-backend test --home /var/cosmos-chain/pfm-3", "hostname": "TestPFMUpgrade-fuetdy", "container": "TestPFMUpgrade-fuetdy"}
    /Users/mfig/go/pkg/mod/go.uber.org/zap@v1.27.0/zaptest/logger.go:146: 2026-03-05T10:30:35.725-0600  INFO    Exec    {"validator": true, "i": 0, "chain_id": "chain-2", "test": "TestPFMUpgrade", "image": "pfm:v8.2.0", "test_name": "TestPFMUpgrade", "command": "simd keys add faucet --coin-type 118 --keyring-backend test --home /var/cosmos-chain/pfm-2", "hostname": "TestPFMUpgrade-eewnob", "container": "TestPFMUpgrade-eewnob"}
```
