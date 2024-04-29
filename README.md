# Dockerized Rclone with SSH

This Docker configuration sets up an Alpine Linux-based container with Rclone and OpenSSH server, providing a convenient way to upload assets from a node server using Rclone.

## Usage

1. **Clone this repository to your local machine:**

    ```bash
    git clone ssh://git@bitbucket.geniusmindzone.com:7999/ilmiya-lms/ilm-asset-manager.git
    cd ilm-asset-manager
    ```

2. **Create an `rclone.conf` file with your Rclone configuration:**

    ```bash
    cp path/to/your/rclone.conf rclone.conf
    ```

3. **Build the Docker image:**

    ```bash
    docker-compose build
    ```

4. **Run the Docker container:**

    ```bash
    docker-compose up -d
    ```

## SSH Access

The container exposes the SSH port (22), mapped to the host port 2222. You can use SSH to access the container:

```bash
ssh -p 2222 ilmAssetManager@localhost
