#!/bin/bash

# Mental Mapping Recon - Basic Reconnaissance Script
# Educational purposes only - Use only on authorized systems

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

# Check if domain is provided
if [ $# -eq 0 ]; then
    print_error "Usage: $0 <domain>"
    print_warning "Example: $0 example.com"
    exit 1
fi

DOMAIN=$1
OUTPUT_DIR="recon_${DOMAIN}_$(date +%Y%m%d_%H%M%S)"

# Legal disclaimer
echo -e "${RED}"
echo "=================================================================="
echo "                    LEGAL DISCLAIMER"
echo "=================================================================="
echo "This script is for EDUCATIONAL and AUTHORIZED testing only."
echo "Only use on systems you own or have explicit permission to test."
echo "Unauthorized scanning is illegal and unethical."
echo "=================================================================="
echo -e "${NC}"

read -p "Do you have authorization to scan $DOMAIN? (yes/no): " authorization

if [[ $authorization != "yes" ]]; then
    print_error "Authorization not confirmed. Exiting."
    exit 1
fi

# Create output directory
mkdir -p "$OUTPUT_DIR"
print_status "Created output directory: $OUTPUT_DIR"

# Mental Model Reminder
print_status "🧠 Mental Model Reminder:"
echo "  🛣️  Networks = Roads connecting locations"
echo "  🏢 Domains = Buildings with addresses"
echo "  🚪 Ports = Doors (open/closed)"
echo "  🏘️  Subdomains = Side streets and smaller buildings"
echo ""

# Phase 1: Subdomain Enumeration
print_status "Phase 1: Subdomain Enumeration (Finding the neighborhood)"
if command -v amass &> /dev/null; then
    print_status "Running Amass subdomain enumeration..."
    amass enum -d "$DOMAIN" -o "$OUTPUT_DIR/subdomains.txt"
    print_success "Subdomains saved to $OUTPUT_DIR/subdomains.txt"
else
    print_warning "Amass not found. Skipping subdomain enumeration."
fi

# Phase 2: Basic Port Scanning
print_status "Phase 2: Port Scanning (Checking which doors are open)"
if command -v nmap &> /dev/null; then
    print_status "Running basic Nmap scan..."
    nmap -sC -sV "$DOMAIN" -oN "$OUTPUT_DIR/nmap_basic.txt"
    
    print_status "Running comprehensive port scan..."
    nmap -p 1-65535 -T4 "$DOMAIN" -oN "$OUTPUT_DIR/nmap_full.txt"
    
    print_success "Nmap results saved to $OUTPUT_DIR/"
else
    print_error "Nmap not found. Please install nmap."
    exit 1
fi

# Phase 3: Results Summary
print_status "Phase 3: Results Summary"
echo ""
echo "📊 Reconnaissance Complete!"
echo "📁 Results saved in: $OUTPUT_DIR/"
echo ""
echo "🔍 Next Steps:"
echo "  1. Review subdomain list for interesting targets"
echo "  2. Analyze open ports and running services"
echo "  3. Cross-reference findings for attack vectors"
echo "  4. Document everything for further analysis"
echo ""
print_warning "Remember: This is reconnaissance only. Always follow ethical guidelines."
