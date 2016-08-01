#!/bin/sh

BUNDLE="CTAssetsPickerController.bundle"

rm -rf $BUNDLE
mkdir $BUNDLE

find "Resources" -name "*.png" | xargs -I {} cp {} "$BUNDLE/"
find "Resources" -name "*.lproj" | xargs -I {} cp -R {} "$BUNDLE/"
echo "Created $BUNDLE"
