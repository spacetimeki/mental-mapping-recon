# Conceptual Recon Lab – Nmap & Amass

This lab showcases **conceptual practice of network reconnaissance** using Nmap and Amass.

> ⚠️ **Disclaimer**: This lab is conceptual. All exercises should be performed only in authorized environments. Do not attempt unauthorized scanning.

---

## Nmap Scanning Techniques

| Command | Purpose |
|--------|---------|
| `nmap -sC -sV example.com` | Scan common ports and detect running services using default scripts |
| `nmap -p 1-65535 -T4 example.com` | Perform a full port scan to discover all potential entry points |
| `nmap -A example.com` | Run an aggressive scan to detect OS, services, and run advanced scripts |
| `nmap -p 80 example.com` | Scan a specific port (e.g., HTTP on port 80) for targeted analysis |

---

## Amass Reconnaissance Commands

| Command | Purpose |
|--------|---------|
| `amass enum -d example.com` | Enumerate subdomains associated with the target domain |
| `amass viz -d example.com -o viz.png` | Visualize relationships between domains and subdomains |
| `amass enum -passive -d example.com` | Perform passive reconnaissance without active probing |

---

## Conceptual Approach to Recon

### Visualizing the Network

- Networks are like **streets** connecting **houses** (domains).
- **Ports** are **doors**—open doors may allow entry.
- **Subdomains** are **side streets** or smaller houses branching off the main road.

### Key Insights

- Recon is the **foundation** for all penetration testing phases.
- **Mental models** help interpret scan results more effectively.
- Spotting **patterns** in open ports and services helps prioritize targets.

---

## Best Practices

- Document every step clearly.
- Understand the **context** behind scan results.
- Cross-reference outputs from **Nmap** and **Amass** for a complete picture.
- Treat reconnaissance as a **continuous, iterative, and analytical** process.

---

## Next Steps

- Research relevant **CVEs** and test exploits in a lab environment.
- Explore **automation and scripting** to streamline advanced recon tasks.
