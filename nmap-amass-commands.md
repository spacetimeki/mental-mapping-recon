# 🔍 Nmap & Amass Command Reference

> **Educational network reconnaissance using mental mapping techniques**

This comprehensive guide demonstrates **conceptual practice of network reconnaissance** using Nmap and Amass with our unique mental mapping approach.

## 🚨 **Legal Disclaimer**

⚠️ **CRITICAL**: All commands are for **educational purposes only**. Use only in:
- ✅ Authorized penetration testing environments
- ✅ Your own systems and networks  
- ✅ Designated lab environments
- ✅ Systems with explicit written permission

**🚫 Unauthorized scanning is illegal and unethical.**

---

## 🧠 **Mental Model Reference**

Before diving into commands, remember our visualization approach:

| Concept | Mental Model | Reconnaissance Focus |
|---------|--------------|---------------------|
| 🛣️ **Networks** | Roads & Streets | Connection pathways |
| 🏢 **Domains** | Buildings & Addresses | Target identification |
| 🚪 **Ports** | Doors (open/closed) | Service entry points |
| 🏘️ **Subdomains** | Side streets & smaller buildings | Extended attack surface |

---

## 🗺️ **Nmap Scanning Techniques**

### Basic Reconnaissance (Finding the Building)

| Command | Purpose | Mental Model |
|---------|---------|--------------|
| `nmap -sC -sV example.com` | Scan common ports and detect services | 🚪 Check main doors and see what's inside |
| `nmap -p 1-65535 -T4 example.com` | Full port scan (all 65,535 ports) | 🔍 Examine every possible door |
| `nmap -A example.com` | Aggressive scan (OS + services + scripts) | 🕵️ Full building inspection |

### Targeted Scanning (Focused Investigation)

| Command | Purpose | Mental Model |
|---------|---------|--------------|
| `nmap -p 80,443 example.com` | Scan specific ports (HTTP/HTTPS) | 🚪 Check specific doors of interest |
| `nmap -sU example.com` | UDP port scan | 🔍 Check windows instead of doors |
| `nmap -sS example.com` | Stealth SYN scan | 🥷 Quietly test doors without fully opening |

### Advanced Techniques

| Command | Purpose | Mental Model |
|---------|---------|--------------|
| `nmap --script vuln example.com` | Vulnerability scanning | 🔓 Look for broken locks and weak doors |
| `nmap -O example.com` | OS detection | 🏗️ Identify building architecture |
| `nmap -sV --version-intensity 9 example.com` | Intensive service detection | 🔬 Detailed examination of door mechanisms |

---

## 🏘️ **Amass Reconnaissance Commands**

### Subdomain Discovery (Exploring the Neighborhood)

| Command | Purpose | Mental Model |
|---------|---------|--------------|
| `amass enum -d example.com` | Enumerate subdomains | 🗺️ Map all buildings in the neighborhood |
| `amass enum -passive -d example.com` | Passive subdomain discovery | 👀 Observe from a distance without approaching |
| `amass enum -active -d example.com` | Active subdomain enumeration | 🚶 Walk around and actively explore |

### Visualization & Analysis

| Command | Purpose | Mental Model |
|---------|---------|--------------|
| `amass viz -d example.com -o network-map.png` | Create visual network map | 📊 Draw a neighborhood map |
| `amass db -d example.com -show` | Show database results | 📋 Review collected intelligence |
| `amass intel -d example.com` | Gather intelligence on domain | 🕵️ Background research on the area |

### Advanced Techniques

| Command | Purpose | Mental Model |
|---------|---------|--------------|
| `amass enum -brute -d example.com` | Brute force subdomains | 🔍 Systematically check every possible address |
| `amass track -d example.com` | Track changes over time | 📈 Monitor neighborhood development |

---

## 🎯 **Practical Workflow Examples**

### Scenario 1: Initial Reconnaissance
```bash
# Step 1: Discover the neighborhood (subdomains)
amass enum -d example.com -o subdomains.txt

# Step 2: Check main doors (common ports)
nmap -sC -sV example.com

# Step 3: Create visual map
amass viz -d example.com -o network-visualization.png
```

### Scenario 2: Deep Investigation
```bash
# Step 1: Comprehensive subdomain discovery
amass enum -active -brute -d example.com

# Step 2: Full port scan on main target
nmap -p 1-65535 -T4 example.com

# Step 3: Vulnerability assessment
nmap --script vuln example.com
```

---

## 🧠 **Mental Model Application**

### Interpreting Results

**When you see open ports:**
- 🚪 **Port 22 (SSH)** = Back door for administrators
- 🚪 **Port 80/443 (HTTP/HTTPS)** = Main entrance for visitors  
- 🚪 **Port 21 (FTP)** = Service entrance for file transfers
- 🚪 **Port 25 (SMTP)** = Mail slot for messages

**When you discover subdomains:**
- 🏢 **www.example.com** = Main building (public face)
- 🏗️ **admin.example.com** = Management office
- 🔧 **api.example.com** = Service building (backend)
- 🧪 **dev.example.com** = Construction site (development)

---

## 📊 **Best Practices**

### Documentation Strategy
- 📝 **Record everything** - Every scan, every result
- 🔗 **Cross-reference findings** - Connect Nmap and Amass results
- ⏰ **Timestamp activities** - Track when discoveries were made
- 🎯 **Prioritize targets** - Focus on high-value discoveries

### Ethical Guidelines
- ✅ **Always get authorization** before scanning
- 📋 **Document permission** in writing
- 🚫 **Never exceed scope** of authorized testing
- 🤝 **Practice responsible disclosure** for vulnerabilities

---

## 🚀 **Advanced Techniques**

### Automation Ideas
```bash
# Combine tools for comprehensive recon
#!/bin/bash
DOMAIN=$1
amass enum -d $DOMAIN | tee subdomains.txt
while read subdomain; do
    nmap -sC -sV $subdomain
done < subdomains.txt
```

### Integration with Other Tools
- **Combine with Burp Suite** for web application testing
- **Use with Metasploit** for exploitation frameworks
- **Integrate with OSINT tools** for comprehensive intelligence

---

## 🎓 **Learning Outcomes**

After mastering these commands, you should be able to:

✅ **Systematic Reconnaissance**
- Plan and execute comprehensive network discovery
- Apply mental models to interpret complex results
- Integrate multiple tools for complete coverage

✅ **Ethical Practice**
- Understand legal boundaries and requirements
- Practice responsible disclosure principles
- Maintain professional ethical standards

✅ **Technical Proficiency**
- Master essential Nmap scanning techniques
- Perform advanced subdomain enumeration
- Create meaningful visualizations of network topology

---

## 📚 **Additional Resources**

- 📖 [Nmap Official Documentation](https://nmap.org/docs.html)
- 📖 [Amass User Guide](https://github.com/OWASP/Amass/blob/master/doc/user_guide.md)
- 🎥 [Mental Mapping Techniques in Cybersecurity](examples/)
- 🛠️ [Automated Reconnaissance Scripts](examples/)
