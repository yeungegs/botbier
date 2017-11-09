[![Holberton logo](https://www.holbertonschool.com/assets/holberton-logo-1cc451260ca3cd297def53f2250a9794810667c7ca7b5fa5879a569a457bf16f.png)](https://www.holbertonschool.com/)

# Botbier
## End of term project for Holberton School
### Author: Elaine Yeung [<img src="https://user-images.githubusercontent.com/23224088/27935507-4e614b68-6260-11e7-8b20-d0352ef3ff53.png" height="18px"/>](https://twitter.com/egsy) 

## Description
Botbier aims to minimize frustrations with setting up the StarCraft II Learning Environment through improved documentation and containerization. By removing barriers to setup, this project allows developers to start creating StarCraft II agents in a matter of minutes.

### Table of Contents

### Requirements
- Docker for Mac (not yet tested on Docker for Windows)
- at least 5.5GB free

### Installation

```sh
# pull latest image from Docker cloud
docker run -it \
       -e /bin/bash \
       --name sc2ai
        egsy/sc2ai
```

```
# wait for Docker image to be pulled. 
```

```
# Once pulled, you will be inside container - now run install script to install Linux version of StarCraft 2 and maps.
./root/installblz.sh
```

_At any point, to return to your local machine, type `exit`. See troubleshooting section below for questions regarding container._

### Usage

### Troubleshooting

### Contributing

### Resources

### Roadmap
- [ ] insert link to list of resources on medium
- [ ] mount volume to persist data between containers
- [ ] COPY or ADD starcraft into mounted volume...?
- [ ] complete usage, troubleshooting, resources sections in readme
- [ ] add contribution guidelines to readme

### Credits

- Mario Izquierdo, Mentor
- Victor Mendiluce, Consulting Mentor
- Anne Cognet, Consulting Mentor
- Mason Fish, Consulting Mentor
