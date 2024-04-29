FROM alpine:latest

# Install rclone and openssh-server
RUN apk --no-cache add rclone openssh-server

# Generate SSH host keys
RUN ssh-keygen -A

# Create a non-root user for SSH access
RUN adduser -D -s /bin/ash ilmAssetManager \
    && echo 'ilmAssetManager:ilmAssetManager_password' | chpasswd

# Expose SSH port
EXPOSE 22

# Start SSH server
CMD ["/usr/sbin/sshd", "-D"]
