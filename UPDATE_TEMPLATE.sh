
TEMP_DIR=$(mktemp)

echo "Updating using '${TEMP_DIR}' as relative storage."
echo "Cloning the 'meta' template to the relative storage."
git clone git@codeberg.org:Amethyst/meta.git "${TEMP_DIR}"

echo "Pulling the files which can be updated."
cp -r "${TEMP_DIR}/ISSUE_TEMPLATE" "./"
cp -r "${TEMP_DIR}/CODE_OF_CONDUCT.md" "./CODE_OF_CONDUCT.md"
cp -r "${TEMP_DIR}/CONTRIBUTING.md" "./CONTRIBUTING.md"
cp -r "${TEMP_DIR}/SECURITY.md" "./SECURITY.md"
cp -r "${TEMP_DIR}/SUPPORT.md" "./SUPPORT.md"
cp -r "${TEMP_DIR}/UPDATE_TEMPLATE.sh" "./UPDATE_TEMPLATE.sh"

