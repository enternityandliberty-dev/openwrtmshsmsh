#!/bin/sh

# Версия патча
PATCH_VERSION="1.0.4test"
VERSION_FILE="/root/version"

# UI
echo "Patch v.${PATCH_VERSION}"
echo "This patch adds VK IP addresses to homeproxy direct list"

# Проверка существования файла и запись в него последней версии
if [ ! -f "$VERSION_FILE" ]; then
    echo "${PATCH_VERSION}" > "$VERSION_FILE"
    echo "Created version file with version ${PATCH_VERSION}"
else
    echo "${PATCH_VERSION}" >> "$VERSION_FILE"
    echo "Added version ${PATCH_VERSION} to existing version file"
fi

#Тело скрипта

echo "Patch is applied, wait for the services to restart"

#Перезагрузка необходимых служб

echo "Finished"

# Показываем историю версий
echo ""
echo "Version history:"
cat "$VERSION_FILE"
