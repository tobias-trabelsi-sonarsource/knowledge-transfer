[Kind](https://kind.sigs.k8s.io/docs/user/quick-start/) can be used for local development. If you want to play with resiliency or debug some strange behaviour you can provide a modified config to spawn additional nodes. 
This does not increase performance!

```bash
kind create cluster --name <> --config config.yml
```

The KIND Network does not support network policies. disable Kind network (`config_no_KIND_Network.yml`) and install CNI of choice afterwards.
Good options are:
* [calico](https://projectcalico.docs.tigera.io/getting-started/kubernetes/helm)
* [cilium](https://docs.cilium.io/en/stable/gettingstarted/kind/#gs-kind)

