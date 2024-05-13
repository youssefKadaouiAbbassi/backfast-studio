<h1 align="center">Next.js Starter Kit</h1>

## Overview
**Next.js Starter Kit** is a comprehensive toolkit for building efficient web applications. It leverages the power of Next.js for frontend development.

## Features
- **[Next.js](https://nextjs.org/docs)**: A React framework ready for production.
- **[Tailwind CSS](https://tailwindcss.com/)**: For efficient UI development.
- **[Husky](https://github.com/typicode/husky)**: Maintaining code quality with Git hooks.
- **[ESLint](https://eslint.org/) & [Prettier](https://prettier.io/)**: Ensuring code style consistency.
- **[Lint-staged](https://github.com/lint-staged/lint-staged)**: Run linters against staged git files and don't let 💩 slip into your code base.

## Installation

### Prerequisites
- [Bun](https://bun.sh/) should be installed on your system.
- [Docker](https://www.docker.com/) should be installed on your system.

### Steps
1. Clone the repository:
   ```bash
   git clone git@github.com:youssefKadaouiAbbassi/next-template.git
   ```
2. Change to the project directory:
   ```bash
   cd next-template
   ```
3. Install dependencies:
   ```bash
   bun install
   ```

## Development Setup

### Running the Development Server
```bash
bun run dev
```

## Production Setup

### Building for Production
```bash
bun run build
```

### Starting the Production Server
```bash
bun run start
```

## Deployment

### Deploying to Vercel

1. **Vercel Setup**
   - Create or log in to your [Vercel account](https://vercel.com/).
   - Connect your GitHub repository to Vercel.
   - Configure project settings, including setting necessary environment variables.

2. **Application Deployment**
   - Deploy your application through Vercel, which will automatically build and host your Next.js application, integrating with GitHub for CI/CD processes.

## Contributing
Contributions are welcome! Please read our [Contributing Guidelines](link-to-guidelines) for more information.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
