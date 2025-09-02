# Examples Directory

This directory contains practical examples and scripts for mental mapping reconnaissance.

## 🚨 **Legal Notice**

All examples are for **educational purposes only**. Use only on:
- Your own systems
- Authorized penetration testing environments  
- Systems with explicit written permission

## 📁 **Available Examples**

### `basic-recon.sh`
A comprehensive bash script that demonstrates the mental mapping approach:

**Features:**
- Interactive authorization check
- Subdomain enumeration with Amass
- Port scanning with Nmap
- Organized output directory
- Mental model reminders
- Colored terminal output

**Usage:**
```bash
chmod +x basic-recon.sh
./basic-recon.sh example.com
```

**Mental Model Integration:**
- 🛣️ Networks = Roads connecting locations
- 🏢 Domains = Buildings with addresses  
- 🚪 Ports = Doors (open/closed)
- 🏘️ Subdomains = Side streets and smaller buildings

## 🔧 **Prerequisites**

Ensure you have the required tools installed:

```bash
# Kali Linux / Debian
sudo apt update
sudo apt install nmap amass

# Check installations
nmap --version
amass version
```

## 📊 **Output Structure**

Scripts create organized output directories:
```
recon_example.com_20250902_180000/
├── subdomains.txt          # Discovered subdomains
├── nmap_basic.txt          # Basic port scan results
└── nmap_full.txt           # Comprehensive port scan
```

## 🎯 **Learning Objectives**

- Practice systematic reconnaissance methodology
- Apply mental mapping visualization techniques
- Understand tool integration and workflow
- Develop ethical testing practices

## 🤝 **Contributing Examples**

When adding new examples:
1. Include comprehensive legal disclaimers
2. Add authorization checks
3. Use mental model analogies
4. Provide clear documentation
5. Test in safe environments only
