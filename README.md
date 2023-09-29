<div align="center">
    <p>
      <img src="images/header.png" alt="Half-life Dedicated Server for Linux" />
    </p>
    <p>
      <a href="README.md"><img src="images/en_US.png" alt="English Language"/> English</a> — <a href="README-es_ES.md"><img src="images/es_ES.png" alt="Idioma Español"/> Español</a>
    </p>
</div>

# ReHLDS in Docker

Using the image [dapize/hlds:latest](https://github.com/dapize/hlds) and the files compiled from the [oficial repository of ReHLDS](https://github.com/dreamstalker/rehlds) and [Docker](https://www.docker.com/) of course, this repo allow the creation of a Docker image of a ReHLDS ready to use.

## How use it?

Importing the commands from the father image...

```
docker run -d --name rehlds\
 -p 26900:26900/udp\
 -p 27020:27020/udp\
 -p 27015:27015/udp\
 -p 27015:27015\
 -e SERVER_NAME="My ReHL Server"\
 -e START_MAP="crossfire"\
 -e MAXPLAYERS="32"\
 -e RCON_PASSWORD="secret"\
 dapize/rehlds:latest
```

and that's it!

> the files are located in: /opt/hlds

## If you use docker-compose

Can use the example writed in the docker-compose file:

```
version: "3.9"
services:
  rehlds:
    image: dapize/rehlds:latest
    environment:
      SERVER_NAME: "My ReHL Dedicated Server"
      START_MAP: "crossfire"
      MAXPLAYERS: "32"
      RCON_PASSWORD: "secret"
    ports:
      - 26900:26900/udp
      - 27020:27020/udp
      - 27015:27015/udp
      - 27015:27015/tcp
```

## 📚 Do you need help?

Let me know if have some doubt

## 🧾 License

The code and documentation are published under the [Mit License](LICENSE).
