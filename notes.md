# Lab Notes – Recon with Nmap & Amass

This document contains structured notes from a conceptual (based on a real life) lab using Nmap and Amass. The goal is to understand how to visualize and interpret network structures, ports, and subdomains in a safe, controlled environment.

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

