## System Setup Bash Script for Laravel

This repository contains a bash script designed to streamline the setup process for a web server environment on Debian-based systems. The script automates the installation of essential components such as Apache web server, PHP, Redis, Composer, and Git.

### Prerequisites

Before running the script, ensure the following prerequisites are met:

- You are using a Debian-based Linux distribution.
- You have sudo privileges or are logged in as the root user.

### Instructions

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-username/system-setup-bash-script.git
   ```

2. **Navigate to the Repository Directory:**
   ```bash
   cd system-setup-bash-script
   ```

3. **Make the Script Executable:**
   ```bash
   chmod +x setup.sh
   ```

4. **Run the Script:**
   ```bash
   sudo ./setup.sh
   ```

### Usage

- Upon execution, the script will guide you through the installation process.
- It will check for sudo privileges and update the package repositories.
- Apache, PHP, Redis, Composer, and Git will be installed automatically.
- For PHP installation, you will have the option to select specific PHP versions to install.

### Notes

- Ensure that your system meets the requirements mentioned above.
- Review the script before running it, especially if modifications are needed based on your specific requirements.
- For any issues or suggestions, please open an issue in the repository.

---

Feel free to customize this README according to your preferences, adding more detailed instructions or explanations as necessary.
