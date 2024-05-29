
<h1 align="center">Backfast Studio</h1>

## Overview
**Backfast Studio** is the repository for the Docker configuration of the of backfast Studio. 


## Prerequisites
- [Docker](https://www.docker.com/) should be installed on your system.

## Installation

### Steps
1. Clone the repository:
   ```bash
   git clone git@github.com:youssefKadaouiAbbassi/backfast-studio.git
   ```
2. Change to the project directory:
   ```bash
   cd backfast-studio
   ```

## Development Setup

### Building the Development Docker Image
```bash
make build-dev
```

### Starting the Development Docker Container
```bash
make start-dev
```

### Stopping the Development Docker Container
```bash
make stop-dev
```

## Production Setup

### Building the Production Docker Image
```bash
make build-prod
```

### Starting the Production Docker Container
```bash
make start-prod
```

### Stopping the Production Docker Container
```bash
make stop-prod
```

## Contributing
Contributions are welcome! Please read our [Contributing Guidelines](link-to-guidelines) for more information.

## License
This project is licensed under the Apache-2.0 License - see the [LICENSE](LICENSE) file for details.
