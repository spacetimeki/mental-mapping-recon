# 🧠 Mental Mapping Recon

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Security](https://img.shields.io/badge/Security-Educational%20Only-red.svg)](https://github.com/spacetimeki/mental-mapping-recon)

> **A conceptual approach to network reconnaissance using mental models and visualization techniques**

This repository demonstrates educational network reconnaissance concepts using **Nmap** and **Amass** with a unique mental mapping approach that helps visualize network structures as familiar real-world analogies.

## 🚨 **Legal Disclaimer**

⚠️ **IMPORTANT**: This repository is for **educational purposes only**. All techniques and commands should only be used in:
- Authorized penetration testing environments
- Your own systems and networks
- Designated lab environments
- Systems where you have explicit written permission

**Unauthorized scanning of networks is illegal and unethical.**

---

## 🎯 **Project Overview**

### Mental Model Approach
We use intuitive analogies to understand complex network structures:

- 🛣️ **Networks** → Roads and streets connecting locations
- 🏢 **Domains** → Buildings with specific addresses  
- 🚪 **Ports** → Doors that may be open or closed
- 🏘️ **Subdomains** → Side streets and smaller buildings

This visualization technique makes reconnaissance results more intuitive and actionable.

---

## 🛠️ **Tools & Technologies**

| Tool | Purpose | Documentation |
|------|---------|---------------|
| **Nmap** | Network mapping and port scanning | [Commands Guide](nmap-amass-commands.md) |
| **Amass** | Subdomain enumeration and visualization | [Commands Guide](nmap-amass-commands.md) |
| **Kali Linux** | Penetration testing distribution | [Official Docs](https://www.kali.org/docs/) |

---

## 📚 **Documentation**

- 📖 [**Command Reference**](nmap-amass-commands.md) - Detailed Nmap and Amass commands
- 📝 [**Lab Notes**](notes.md) - Structured notes and observations
- 🎨 [**Visual Workflow**](diagram.txt) - ASCII art process diagram

---

## 🚀 **Quick Start**

### Prerequisites
```bash
# Install required tools (Kali Linux)
sudo apt update
sudo apt install nmap amass
```

### Basic Reconnaissance Workflow

1. **Subdomain Enumeration**
   ```bash
   amass enum -d example.com
   ```

2. **Port Scanning**
   ```bash
   nmap -sC -sV example.com
   ```

3. **Visualization**
   ```bash
   amass viz -d example.com -o network-map.png
   ```

---

## 📊 **Key Learning Outcomes**

✅ **Conceptual Understanding**
- Visualize network topology using mental models
- Interpret scan results through familiar analogies
- Develop systematic reconnaissance methodology

✅ **Technical Skills**
- Master essential Nmap scanning techniques
- Perform comprehensive subdomain enumeration
- Create visual network relationship maps

✅ **Best Practices**
- Document all reconnaissance activities
- Cross-reference multiple tool outputs
- Maintain ethical and legal compliance

---

## 🎨 **Visual Process Flow**

```
🌐 Target Domain
       ↓
🏘️ Subdomain Discovery (Amass)
       ↓  
🗺️ Network Visualization
       ↓
🔍 Port Scanning (Nmap)
       ↓
🧩 Mental Model Interpretation
       ↓
📓 Documentation & Analysis
```

---

## 🤝 **Contributing**

Contributions are welcome! Please read our [Contributing Guidelines](CONTRIBUTING.md) before submitting pull requests.

### Areas for Improvement
- Additional mental model analogies
- Advanced reconnaissance techniques
- Automation scripts
- Educational examples

---

## 📄 **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## ⚡ **Next Steps**

- [ ] Advanced reconnaissance techniques
- [ ] Automation scripting
- [ ] Integration with other security tools
- [ ] Extended visualization capabilities

---

## 📞 **Support & Contact**

For questions, suggestions, or educational discussions:
- 🐛 [Report Issues](https://github.com/spacetimeki/mental-mapping-recon/issues)
- 💡 [Feature Requests](https://github.com/spacetimeki/mental-mapping-recon/issues)

---

<div align="center">

**🧠 Think Different. Map Smarter. Recon Better.**

*Made with ❤️ for the cybersecurity education community*

</div>
