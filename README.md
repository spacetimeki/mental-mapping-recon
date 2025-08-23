# Mental Mapping – Recon Conceptual Practice

This lab demonstrates conceptual practice in network and subdomain reconnaissance using Nmap and Amass.

Note: No actual exploitation was performed on live systems. All scans should be conducted in authorized environments only.

---

## Lab Concept

Imagine the network as a city:
- Networks are streets connecting locations
- Domains are houses on those streets
- Ports are doors to those houses

This mental model helps visualize the reconnaissance process while running safe scans.

---

## Tools Used

- Nmap – Network mapping and port scanning
- Amass – Subdomain enumeration and visualization
- Linux VM (Kali) – Lab environment for running tools

---

## Recon Phase Examples

### Nmap Scans

| Command | Purpose |
|--------|---------|
| `nmap -sC -sV example.com` | Scan top 1000 TCP ports and detect running services |
| `nmap -p 1-65535 -T4 example.com` | Full port scan to identify all potential entry points |

### Amass Scans

| Command | Purpose |
|--------|---------|
| `amass enum -d example.com` | Enumerate subdomains of the target domain |
| `amass viz -d example.com` | Visualize relationships between domains and subdomains |

---

## Outcomes

- Understand network structure and service exposure
- Map domains and ports using conceptual models
- Visualize reconnaissance as a city of streets, houses (addresses), and doors
