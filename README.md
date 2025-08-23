# mental mapping - recon – conceptual practice

this lab demonstrates my conceptual practice in network and subdomain reconnaissance using Nmap and Amass.  
*note: no actual exploitation was performed on live systems.*

## lab concept

i visualized networks as streets, domains as houses, and ports as doors, practicing the reconnaissance process mentally while running safe scans.

## tools

- **Nmap** – network mapping and port scanning  
- **Amass** – subdomain enumeration  
- Linux VM (Kali)

## recon phase examples

### Nmap scans
- `nmap -sC -sV example.com`  
- `nmap -p 1-65535 -T4 example.com`

### Amass scans
- `amass enum -d example.com`  
- `amass viz -d example.com`

## learning outcomes

- understanding network structure and service exposure  
- mapping domains and ports conceptually  
- visualizing recon as a “city” of streets, houses, and doors

## next steps

- perhaps in the future...
