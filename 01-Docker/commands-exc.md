## Reto 1: Dockerizar MongoDB

---

#### Comando para crear y ejecutar el contenedor de MongoDB

```bash
docker run -d \
  --name mongodb \
  -p 27017:27017 \
  -e MONGO_INITDB_ROOT_USERNAME=admin \
  -e MONGO_INITDB_ROOT_PASSWORD=admin123 \
  -v mongo_data:/data/db \
  mongo:latest
```

---

#### Configuración de conexión del backend a MongoDB

- Le agregue a la variable global el username y password

![alt text](image-1.png)

- Levantando el servidor backend localmente:

![alt text](image.png)

---

### Prueba REST Client

- Se enviaron 2 request desde el `client.http` al contenedor del mongodb
- En la primera imagen vemos los datos persistidos dentro del contenedor mediante un POST, en la segunda es el GET de todas las clases.

![alt text](image-3.png)

![alt text](image-2.png)

## Reto 2: Dockerizar backend

#### Crear un Dockerfile

![alt text](image-4.png)

#### Construir la imagen usando el Dockerfile

- Para construir la imagen, ejecuto el siguiente comando:

  ```bash
  docker build -t classes-backend:0.0.1 .
  ```

#### Verificar conexion con MongoDB container

- Para ello, lo que hice fue crearme una network y luego crear el contenedor de la imagen del backend, ademas de asignarle la network al mongodb container.

  ```bash
  docker network create db-back

  docker run -d --name class-back --network db-back -p 5000:5000 class-back:0.0.1
  ```
