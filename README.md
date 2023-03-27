# React Component Generator

React Component Generator is a simple shell script that allows you to quickly generate new React components with default template files. It is a useful tool for React developers who want to streamline their workflow.

## Installation

1. Clone this repository: `git clone https://github.com/username/react-component-generator.git`
2. Modify the template files in the `templates` directory to suit your needs.
3. Create an alias for the `newcomponent.sh` script in your shell profile file, such as `.bashrc` or `.zshrc`. For example:

```
alias newcomponent="sh /pathtofolder/react-component-generator/script.sh"
```

Make sure to replace /pathtofolder/ with the actual path to the cloned repository on your machine. 4. Source your shell configuration file to reload the configuration:

```
source ~/.bashrc  # or ~/.zshrc, or whatever your shell configuration file is called
```

## Usage

To create a new component, simply run the following command:

```
newcomponent MyComponent
```

This will create a new component named `MyComponent` with default template files for TypeScript, CSS, and an index file.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more information.

# React Component Generator

This project provides a simple shell script for generating new React components with a pre-defined structure.

## Installation

1. Clone the repository to your local machine:

```
git clone https://github.com/mnaji42/react-component-generator.git
```

2. Modify the template files in the templates directory to match your needs.
3. Create an alias for the newcomponent.sh script in your shell configuration file (e.g., .bashrc, .zshrc, etc.):

```
alias newcomponent="sh /pathtofolder/react-component-generator/script.sh"
```

Make sure to replace /pathtofolder/ with the actual path to the cloned repository on your machine. 4. Source your shell configuration file to reload the configuration:

```
source ~/.bashrc  # or ~/.zshrc, or whatever your shell configuration file is called
```

## Usage

To generate a new React component, simply run the newcomponent alias followed by the name of the component you want to create:

```
newcomponent MyComponent
```

This will create a new directory called MyComponent in the current working directory with the following files:

- MyComponent.tsx: a TypeScript file containing the component's code.
- MyComponent.module.css: a CSS module file containing the component's styles.
- index.ts: an index file exporting the component.
  The MyComponent.tsx file will be populated with a default template that includes the component's name and some basic structure.

## Customization

You can customize the default template by modifying the files in the templates directory. The Component.tsx, index.ts, and styles.module.css files contain the default templates for the component code, index file, and styles, respectively.

You can also modify the newcomponent.sh script itself to change the behavior of the component generation process.
