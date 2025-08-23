# Mental Mapping - Recon – Conceptual Practice

This lab demonstrates conceptual practice in network and subdomain reconnaissance using Nmap and Amass.  
*Note: No actual exploitation was performed on live systems.*

## Lab Concept

Imagine networks as streets, domains as houses, and ports as doors; Imagining the reconnaissance process visually while running safe scans.

## Tools

- **Nmap** – network mapping and port scanning  
- **Amass** – subdomain enumeration  
- Linux VM (Kali)

## Recon Phase Examples

### Nmap Scans
- `nmap -sC -sV example.com`  
- `nmap -p 1-65535 -T4 example.com`

### Amass Scans
- `amass enum -d example.com`  
- `amass viz -d example.com`

## Outcomes

- Understanding network structure and service exposure  
- Mapping domains and ports conceptually  
- Visualizing recon as a “city” of streets, houses (addresses), and doors
