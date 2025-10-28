#!/bin/bash

# =============================================================================
# BIZZQARD Landing Page Builder (macOS / Linux)
# =============================================================================
# Konvertiert Markdown-Dateien zu HTML mit BIZZQARD Theme
#
# Usage:
#   ./build-page.sh input.md [output-folder]
#
# Examples:
#   ./build-page.sh _content/lead-magnet.md
#   ./build-page.sh _content/lead-magnet.md bizzqard-help
# =============================================================================

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo -e "${RED}❌ Error: pandoc is not installed${NC}"
    echo ""
    echo "Install pandoc:"
    echo "  macOS:  brew install pandoc"
    echo "  Linux:  sudo apt-get install pandoc"
    echo ""
    exit 1
fi

# Check arguments
if [ -z "$1" ]; then
  echo -e "${RED}❌ Error: No input file specified${NC}"
  echo ""
  echo "Usage: ./build-page.sh input.md [output-folder]"
  echo ""
  echo "Example:"
  echo "  ./build-page.sh _content/lead-magnet.md"
  echo ""
  exit 1
fi

# Check if input file exists
if [ ! -f "$1" ]; then
  echo -e "${RED}❌ Error: File not found: $1${NC}"
  exit 1
fi

# Variables
INPUT_FILE=$1
OUTPUT_FOLDER=${2:-"bizzqard-courses"}
FILENAME=$(basename "$INPUT_FILE" .md)
OUTPUT_FILE="$OUTPUT_FOLDER/$FILENAME.html"

# Create output folder if it doesn't exist
mkdir -p "$OUTPUT_FOLDER"

echo -e "${BLUE}🚀 BIZZQARD Landing Page Builder${NC}"
echo -e "${BLUE}=================================${NC}"
echo ""
echo -e "📄 Input:  ${YELLOW}$INPUT_FILE${NC}"
echo -e "📁 Output: ${YELLOW}$OUTPUT_FILE${NC}"
echo ""

# Convert with Pandoc
pandoc "$INPUT_FILE" \
  -o "$OUTPUT_FILE" \
  --standalone \
  --template=_templates/landing-page.html \
  --css=../bizzqard-assets/css/landing-page-theme.css \
  --metadata title="$FILENAME"

echo -e "${GREEN}✅ Success! Landing page created${NC}"
echo ""
echo -e "${BLUE}📍 Local Preview:${NC}"
echo -e "   file://$(pwd)/$OUTPUT_FILE"
echo ""
echo -e "${BLUE}🌐 After git push, visit:${NC}"
echo -e "   https://YOUR-USERNAME.github.io/bizzqard-content/$OUTPUT_FILE"
echo ""
echo -e "${YELLOW}💡 Next steps:${NC}"
echo -e "   1. Open $OUTPUT_FILE in browser"
echo -e "   2. git add $OUTPUT_FILE"
echo -e "   3. git commit -m \"Add $FILENAME landing page\""
echo -e "   4. git push origin main"
echo ""