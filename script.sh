#!/bin/bash

componentName="$1"

if [ -z "$componentName" ]; then
  echo "Usage: $0 componentName"
  exit 1
fi

if [ -d "$componentName" ]; then
  echo "Error: $componentName component already exists"
  exit 1
fi

mkdir "$componentName" || exit 1

cp templates/Component.tsx "$componentName/$componentName.tsx" || exit 1
sed -i.bak "s/{{componentName}}/${componentName}/g" "$componentName/$componentName.tsx" || exit 1
rm "$componentName/$componentName.tsx.bak" || exit 1

cp templates/styles.module.css "$componentName/$componentName.module.css" || exit 1
sed -i.bak "s/{{componentName}}/${componentName}/g" "$componentName/$componentName.module.css" || exit 1
rm "$componentName/$componentName.module.css.bak" || exit 1

cp templates/index.ts "$componentName/index.ts" || exit 1
sed -i.bak "s/{{componentName}}/${componentName}/g" "$componentName/index.ts" || exit 1
rm "$componentName/index.ts.bak" || exit 1

if [ -f "index.ts" ]; then
    echo "export { default as $componentName } from './$componentName';" >> index.ts || exit 1
else
    echo "export { default as $componentName } from './$componentName';" > index.ts || exit 1
fi

echo "Component $componentName created successfully"
