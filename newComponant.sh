#!/bin/bash

# Get the name of the component to create
component_name=$1

# Check if an argument is provided
if [ -z "$component_name" ]
then
  echo "Error: You must provide a component name."
  exit 1
fi

# Check if the component folder already exists
if [ -d "$component_name" ]
then
  echo "Error: The '$component_name' folder already exists."
  exit 1
fi

# Create a folder with the component name
mkdir "$component_name"

# Create a Test.tsx file in the component folder
touch "$component_name/$component_name.tsx"

# Add default code to Test.tsx
echo "import React, { FC } from 'react'

import cn from 'classnames'
import s from './$component_name.module.css'

interface ${component_name}Props {
  className?: string
}

const $component_name: FC<${component_name}Props> = ({ className }) => {
  return <div className={cn(s.container, className)}>Test Component</div>
}

export default $component_name" >> "$component_name/$component_name.tsx"

# Create a Test.module.css file in the component folder
touch "$component_name/$component_name.module.css"

# Add default code to Test.module.css
echo ".container {
  
}" >> "$component_name/$component_name.module.css"

# Create an index.ts file in the component folder
touch "$component_name/index.ts"

# Add default code to index.ts
echo "export { default } from './$component_name';" >> "$component_name/index.ts"

# Display a success message
echo "Component $component_name created successfully!"
