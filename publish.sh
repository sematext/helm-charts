#!/usr/bin/env bash

helm package charts/sematext-agent/ -d repo/
helm repo index repo/ --url https://cdn.sematext.com/helm-charts
aws s3 sync repo/ s3://sematext-cdn/helm-charts/
