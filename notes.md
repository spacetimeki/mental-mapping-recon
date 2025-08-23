# Lab Notes – Conceptual Recon with Nmap & Amass

This document contains structured notes from a conceptual reconnaissance lab using Nmap and Amass. The goal is to understand how to visualize and interpret network structures, ports, and subdomains in a safe, controlled environment.

---

## Overview

- **Objective**: Practice safe reconnaissance techniques and develop mental models for interpreting scan results.
- **Tools Used**:
  - Nmap (network mapping and port scanning)
  - Amass (subdomain enumeration and visualization)
  - Kali Linux VM (lab environment)

---

## Mental Model

- **Networks** → Roads/Streets
- **Domains** → Buildings/Addresses
- **Ports** → Doors
- **Subdomains** → Side streets or smaller houses

This analogy helps conceptualize how data flows and where potential entry points may exist.

---

## Commands Used

### Nmap

```bash
nmap -sC -sV example.com
nmap -p 1-65535 -T4 example.com
nmap -A example.com
nmap -p 80 example.com


┌────────────────────────────────────────────┐
│         🧠 Conceptual Recon Lab            │
│        Nmap & Amass Workflow Map           │
└────────────────────────────────────────────┘

          [🌐 Internet]
                |
                v
       ┌─────────────────────┐
       │  Target Domain      │
       │  example.com        │
       └─────────────────────┘
                |
                v
 ┌────────────────────────────────────────────┐
 │         🏘 Subdomain Enumeration            │
 │         Tool: Amass                        │
 │                                            │
 │  ┌──────────────┐   ┌──────────────┐       │
 │  │ blog.example │   │ admin.example│  ...  │
 │  └──────────────┘   └──────────────┘       │
 └────────────────────────────────────────────┘
                |
                v
 ┌────────────────────────────────────────────┐
 │         🗺️ Subdomain Visualization          │
 │         Command: amass viz                 │
 │         Output: viz.png → /diagrams        │
 └────────────────────────────────────────────┘
                |
                v
 ┌────────────────────────────────────────────┐
 │         🔍 Port Scanning (Nmap)             │
 │                                            │
 │  - `nmap -sC -sV` → Common ports/services   │
 │  - `nmap -p 1-65535 -T4` → Full port scan   │
 │  - `nmap -A` → OS detection + scripts       │
 │  - `nmap -p 80` → Targeted HTTP scan        │
 └────────────────────────────────────────────┘
                |
                v
 ┌────────────────────────────────────────────┐
 │         🧩 Recon Interpretation             │
 │                                            │
 │  - Networks = Streets                      │
 │  - Domains = Addresses                     │
 │  - Ports = Doors                           │
 │  - Subdomains = Buildings off main road    │
 └────────────────────────────────────────────┘
                |
                v
 ┌────────────────────────────────────────────┐
 │         📓 Best Practices                   │
 │                                            │
 │  - Document every step                     │
 │  - Understand scan context                 │
 │  - Cross-reference Nmap + Amass            │
 │  - Recon is iterative + analytical         │
 └────────────────────────────────────────────┘
                |
                v
 ┌────────────────────────────────────────────┐
 │         🚀 Next Steps                       │
 │                                            │
 │  - CVE research + exploit testing          │
 │  - Automation + scripting                  │
 │  - Future repo: advanced recon             │
 └────────────────────────────────────────────┘
