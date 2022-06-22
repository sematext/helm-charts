# Sematext Agent

Sematext Agent collects logs, metrics, events and more info for hosts (CPU, memory, disk, network, processes, ...), containers (Docker, containerd, cri-o, Podman and rkt) and orchestrator platforms and ships that to [Sematext Cloud](https://sematext.com/cloud). Sematext Cloud is available in the US and EU regions.

This chart installs the Sematext Agent to all nodes in your cluster via a `DaemonSet` resource.

## Prerequisites

- Kubernetes 1.13+
- You need to create an Infra App in [Sematext Cloud US](https://apps.sematext.com/ui/monitoring-create/app/infra) or [Sematext Cloud EU](https://apps.eu.sematext.com/ui/monitoring-create/app/infra) to get your Infra App Token.

## Installation

To install it, run the following command:

```sh
helm install --name sematext-agent \
  --set infraToken=<YOUR_INFRA_TOKEN> \
  --set region=<US or EU> \
  stable/sematext-agent
```

## Removal

To uninstall the chart use:


```bash
$ helm uninstall st-agent
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Docs

For more detailed information, refer to our official [Helm chart documentation](https://sematext.com/docs/agents/sematext-agent/kubernetes/helm/).
