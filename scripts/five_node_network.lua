cmds = {
    "startnode n1 --db-enabled=false --api-ipcs-enabled=false --http-port=9652 --staking-port=9155 --xput-server-port=9255 --log-level=verbo --bootstrap-ips=",
    "startnode n2 --db-enabled=false --api-ipcs-enabled=false --http-port=9654 --staking-port=9156 --xput-server-port=9256 --log-level=verbo --bootstrap-ips=127.0.0.1:9155",
    "startnode n3 --db-enabled=false --api-ipcs-enabled=false --http-port=9656 --staking-port=9157 --xput-server-port=9257 --log-level=verbo --bootstrap-ips=127.0.0.1:9155,127.0.0.1:9156",
    "startnode n4 --db-enabled=false --api-ipcs-enabled=false --http-port=9658 --staking-port=9158 --xput-server-port=9258 --log-level=verbo --bootstrap-ips=127.0.0.1:9155,127.0.0.1:9156",
    "startnode apinode --db-enabled=false --api-ipcs-enabled=true --http-port=9650 --staking-port=9159 --xput-server-port=9259 --log-level=verbo --bootstrap-ips=127.0.0.1:9155,127.0.0.1:9156,127.0.0.1:9157",
}

for key, cmd in ipairs(cmds) do
    print("calling " .. cmd)
    avash_call(cmd)
end
