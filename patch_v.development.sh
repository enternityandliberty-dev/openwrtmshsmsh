#!/bin/sh

# Версия патча
PATCH_VERSION="1.0.4test"
VERSION_FILE="/root/version"

echo "Patch v.${PATCH_VERSION}"
echo "This patch adds VK IP addresses to homeproxy direct list"

if [ ! -f "$VERSION_FILE" ]; then
    echo "${PATCH_VERSION}" > "$VERSION_FILE"
    echo "Created version file with version ${PATCH_VERSION}"
else
    echo "${PATCH_VERSION}" >> "$VERSION_FILE"
    echo "Added version ${PATCH_VERSION} to existing version file"
fi

echo "Patch is applied, wait for the services to restart"

echo "Finished"

# Показываем историю версий
echo ""
echo "Version history:"
cat "$VERSION_FILE"
