#!/bin/bash
# ============================================
# qrAFA - Update QR Code Destination
# ============================================
# Usage: ./update_redirect.sh <new_url>
# Example: ./update_redirect.sh https://google.com
# ============================================

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
INDEX="$SCRIPT_DIR/index.html"

if [ -z "$1" ]; then
    echo "Current destination:"
    grep -oP 'url=\K[^"]+' "$INDEX" | head -1
    echo ""
    echo "Usage: $0 <new_url>"
    exit 1
fi

NEW_URL="$1"

cat > "$INDEX" << HTMLEOF
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Redirecting...</title>
    <!-- CHANGE THE URL BELOW TO UPDATE WHERE THE QR CODE POINTS -->
    <meta http-equiv="refresh" content="0;url=${NEW_URL}">
    <script>
        window.location.href = "${NEW_URL}";
    </script>
</head>
<body>
    <p>Redirecting... <a href="${NEW_URL}">Click here</a> if not redirected.</p>
</body>
</html>
HTMLEOF

cd "$SCRIPT_DIR"
git add index.html
git commit -m "Update redirect to: $NEW_URL"
git push

echo "Done! QR code now points to: $NEW_URL"
