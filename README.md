# docker-healthy

##### Description

This is my basic script for ensuring docker containers and services within the containers will automatically start upon a restart or general failure. Can be extremely handy ensuring nginx and specific other containers are all online all the time.

Personally, I use it in different ways; BUT this is the foundation to most of my shell scripts I use at times instead of systemd or init.rc for that purpose.

A great learning tool for any person attempting to learn linux and programming at the same time. :D

### Example Usage

    nano healthy.sh
    crontab -e......
   
### To-Do

- [x] Prototype
- [ ] Change to have array of things to check in elegant manner.
- [ ] Cause why not.
   
### License

MIT
