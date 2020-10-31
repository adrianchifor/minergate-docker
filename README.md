# minergate-docker

Easy cryptocurrency miner in Docker.

Legal Disclaimer: Only mine cryptocurrencies in [countries where it is legal to do so](https://en.wikipedia.org/wiki/Legality_of_bitcoin_by_country_or_territory) and on your own hardware or servers. If you mine cryptocurrency on other people's machines without their permission, you might be liable for damages and prosecuted.

## Run

- Sign-up to [MinerGate](https://minergate.com/a/7b8d65654da0aff9698b38af)
- Run the miner:
  - Docker:

  ```
  docker build -t minergate .
  docker run -d minergate "-u" "<email>" "--<currency>"
  ```
  - Kubernetes (change email, currency and replicas in `k8s.yml`):

  ```
  kubectl apply -f k8s.yml
  ```

## Help
```
docker run -t --rm minergate "--help"
```
```
Usage:

minergate-cli [options] <currency-settings> <gpu-settings>

options:
  -h [ --help ]         produce help message
  -l [ --list-gpu ]     shows the list of available GPU devices
  -u [ --user ] email   account email from minergate.com
  -v [ --version ]      show version

currency-settings:
  --currency [=threads(=1)] instead of 'currency' use one of these values:
                            aeon, bcn, etc, eth, fcn, xmc, xmr, zec,
                            for merged mining use one of the follow options:
                            <threads> is count of used CPU threads for mining.
                            If you do not specify a number or put "0", miner
                            will automatically select the optimal number of CPU
                            threads for efficient mining.

gpu-settings:
  -g [ --gpu ] [=device_no(=0)] 'device_no' is the order number of device which
                                you can find out by using this command
                                '--list-gpu'. The miner will use the first GPU
                                device if 'device_no' not specified. Multiple
                                '-g' options also accepted.
  --no-cpu                      don't use CPU for mining

Examples:
  minergate-cli -u minergate@minergate.com --bcn 4
  minergate-cli --user minergate@minergate.com --eth 6 -g
```
