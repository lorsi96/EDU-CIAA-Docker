# EDUU_CIAA-Docker

# Building & Flashing EDU-CIAA-NXP using Docker
1. Install [docker][docker] if not installed
1. Make sure Docker is correctly installed in your system:
    ```sh
    docker --version
    ```
1. If permission issues arise when running the `docker` command, check out this  [guide][sudoless]
1. Connect the EDU-CIAA-NXP board (debug port) and run `ciaa-tools`:
    ```sh
    ./ciaa-tools --build ./example/
    ./ciaa-tools --flash ./example/
    ```

[docker]: https://get.docker.com/
[sudoless]: https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user
