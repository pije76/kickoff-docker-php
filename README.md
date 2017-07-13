<p align="center">
    <img src="https://user-images.githubusercontent.com/8983173/28176182-c45b1196-67f6-11e7-8d96-fd1aefd3fcab.png" alt="kickoff-docker-php's logo" width="200" height="200" />
</p>
<h3 align="center">kickoff-docker-php</h3>
<p align="center">A complete stack for your PHP project powered by Docker</p>
<p align="center">
    <a href="https://github.com/thecodingmachine/kickoff-docker-php/tree/v2.0.0-alpha1-dev"><img src="https://img.shields.io/badge/unstable-2.0-orange.svg" alt="Unstable release: 2.0"></a>
    <a href="https://github.com/thecodingmachine/kickoff-docker-php/tree/v1.0.3"><img src="https://img.shields.io/badge/stable-1.0.3-green.svg" alt="Stable release: 1.0.3"></a>
</p>

---

# Menu

* [Features](#features)
* [Install](#install)
* [Quick start](#quick-start)
* [Credits](#credits)

## Features

* **Cross-platform:** Windows, Mac, Linux
* **Customizable** thanks to [Orbit](https://github.com/gulien/orbit).
* **A complete stack:** NGINX, PHP-FPM 7.1, MySQL 5.7, phpMyAdmin, Redis, RabbitMQ and more
* Automatic **HTTPS** generation on your local environment
* A powerful **reverse-proy** ([Traefik](https://traefik.io/)) which can handle automatic HTTPS (via [Let's Encrypt](https://letsencrypt.org/))
on your production environment

And more to come! :smiley:

## Install

## Quick start

First, fork this project and clone it.

Once done, move to the root directory of this project and copy the file `.env.blueprint` and paste it to a file
named `.env`.

Now open your hosts file and add the following lines at the end of the file:

```
127.0.0.1   my-awesome-project.local
127.0.0.1   www.my-awesome-project.local
127.0.0.1   traefik.my-awesome-project.local
127.0.0.1   phpadmin.my-awesome-project.local
127.0.0.1   rabbitmq.my-awesome-project.local
```
 
Good :smiley:? We're now done with the configuration! :metal:

Last but not least, **shutdown your local Apache or anything which could use your 80 and 443 ports**, and run:

```
orbit run kickoff
```

The installation might take some time, so go for a coffee break! :coffee: 

Once everything has been installed, open your favorite web browser and copy / paste https://www.my-awesome-project.local 
and check if everything is OK!

## Credits

* NGINX and PHP-FPM configuration files from [Cerenit](https://code.cerenit.fr/cerenit/docker-grav)
* MySQL utf8mb4 encoding from [this blog article](https://mathiasbynens.be/notes/mysql-utf8mb4)
* Icon by Nikita Kozin from the Noun Project

---

Would you like to update this documentation ? Feel free to open an [issue](../../issues).