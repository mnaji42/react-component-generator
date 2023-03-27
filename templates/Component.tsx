import React, { FC } from 'react'
import cn from 'classnames'
import s from './{{componentName}}.module.css'

interface {{componentName}}Props {
  className?: string
}

const {{componentName}}: FC<{{componentName}}Props> = ({ className }) => {
  return <div className={cn(s.container, className)}>{{componentName}} Component</div>
}

export default {{componentName}}
