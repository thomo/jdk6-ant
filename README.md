# j6-ant
Docker image with jdk6 and ant

Image is available on [docker hub](https://hub.docker.com/r/thomo/j6-ant)

## Usage

- (optional) build the image 
  ```sh
  ./build
  ```

- run the default ant tast - assume your source code is in current folder
  ```sh
  docker run --rm -it -v ${PWD}:/data thomo/j6-ant:1.3
  ```

- run the test ant task
  ```sh
  docker run --rm -it -v ${PWD}:/data thomo/j6-ant:1.3 ant test
  ```

__Note:__ the uid, gid in the container is `1000:1000`, you can change it by adding `--user=uid:gid` to the commands