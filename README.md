# Network Monitoring Stack (SNMP + Telegraf + InfluxDB + Grafana)

![Observability](https://img.shields.io/badge/focus-Observability-orange)
![Monitoring](https://img.shields.io/badge/category-Network%20Monitoring-green)
![SNMP](https://img.shields.io/badge/protocol-SNMP-blue)
![Grafana](https://img.shields.io/badge/visualization-Grafana-F46800)
![InfluxDB](https://img.shields.io/badge/database-InfluxDB-22ADF6)
![Telegraf](https://img.shields.io/badge/collector-Telegraf-00ADD8)
![Docker](https://img.shields.io/badge/container-Docker-blue)

![License](https://img.shields.io/badge/license-MIT-green)
![Status](https://img.shields.io/badge/status-in%20development-yellow)
![Version](https://img.shields.io/badge/version-0.1.0--beta-orange)

A modular, containerized network monitoring solution for collecting and visualizing SNMP metrics from switches, routers, and servers.

This project uses:

- Telegraf → SNMP data collection  
- InfluxDB → Time-series data storage  
- Grafana → Visualization and dashboards  

---

## Overview

This project provides a scalable and reproducible monitoring stack designed to:

- Monitor network infrastructure via SNMP
- Collect interface statistics (bandwidth, errors, utilization)
- Track system metrics (CPU, memory, uptime)
- Visualize metrics in real time using Grafana dashboards
- Serve as a hands-on lab for learning network observability

---

## Architecture

```text
                        NETWORK DEVICES
                              |
                              | SNMP
                              |
                              v
                        +-----------+
                        | Telegraf  |
                        +-----+-----+
                              |
                              | HTTP
                              v
                        +-----------+
                        | InfluxDB  |
                        |     3     |
                        +-----+-----+
                              |
                              | SQL
                              v
                        +-----------+
                        |  Grafana  |
                        +-----------+
```

## Keywords
network monitoring, SNMP monitoring, infrastructure monitoring, observability, telemetry, time-series database, Grafana dashboards, InfluxDB, Telegraf, DevOps, NetOps, cybersecurity, homelab, network visibility, Docker monitoring stack

## License

This project is licensed under the MIT License.
See the [LICENSE](LICENSE) file for details.