#!/bin/bash

APP_DIR="/Users/deekim/Applications"
OUTPUT_FILE="quitter_apps.xml"

echo "<array>" > "$OUTPUT_FILE"

for app in "$APP_DIR"/*.app; do
    if [[ -d "$app" ]]; then
        BUNDLE_ID=$(mdls -name kMDItemCFBundleIdentifier -raw "$app" 2>/dev/null)
        if [[ -n "$BUNDLE_ID" && "$BUNDLE_ID" != "(null)" ]]; then
            echo "  <dict>" >> "$OUTPUT_FILE"
            echo "    <key>bundleIdentifier</key>" >> "$OUTPUT_FILE"
            echo "    <string>$BUNDLE_ID</string>" >> "$OUTPUT_FILE"
            echo "    <key>bundlePath</key>" >> "$OUTPUT_FILE"
            echo "    <string>$app</string>" >> "$OUTPUT_FILE"
            echo "    <key>inactiveHideInterval</key>" >> "$OUTPUT_FILE"
            echo "    <real>600</real>" >> "$OUTPUT_FILE"
            echo "    <key>inactiveQuitInterval</key>" >> "$OUTPUT_FILE"
            echo "    <real>0.0</real>" >> "$OUTPUT_FILE"
            echo "    <key>quitIfHiddenInterval</key>" >> "$OUTPUT_FILE"
            echo "    <real>0.0</real>" >> "$OUTPUT_FILE"
            echo "  </dict>" >> "$OUTPUT_FILE"
        fi
    fi
done

echo "</array>" >> "$OUTPUT_FILE"

echo "Generated $OUTPUT_FILE with Quitter app rules."

