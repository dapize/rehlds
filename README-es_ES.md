<div align="center">
    <p>
      <img src="images/header.png" alt="Half-life Dedicated Server for Linux" />
    </p>
    <p>
      <a href="README.md"><img src="images/en_US.png" alt="English Language"/> English</a> — <a href="README-es_ES.md"><img src="images/es_ES.png" alt="Idioma Español"/> Español</a>
    </p>
</div>

# ReHLDS in Docker

Usando la imagen [dapize/hlds:latest](https://github.com/dapize/hlds) y los archivos compilados desde el [repositorio oficial de ReHLDS](https://github.com/dreamstalker/rehlds) y [Docker](https://www.docker.com/) obviamente, este repositorio aloja the creación de una imagen de docker lista para usarce.

## ¿Cómo usarla?

Importando los comandos desde la imagen base...

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

y eso es todo!

> Los archivos están localizados en la ruta /opt/hlds

## Si usas docker-compose

Puedes usar el ejemplo escrito en el archivo docker-compose.yaml

```
version: "2"
services:
  rehlds:
    image: dapize/hlds:latest
    environment:
      SERVER_NAME: "My ReHL Server"
      START_MAP: "crossfire"
      MAXPLAYERS: "32"
      RCON_PASSWORD: "secret"
    ports:
      - 26900:26900/udp
      - 27020:27020/udp
      - 27015:27015/udp
      - 27015:27015/tcp
```

## 📚 ¿Necesitas ayuda?

Hazme saber si tienes alguna duda

## 🧾 License

El código y documentación son publicados bajo la licencia [MIT](LICENSE).
