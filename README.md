<!-- Sebastián Castro Vilches | Asignatura: DEVPS1301-1-DEVOPS | IACC -->
# S3_Devops_Reserva_Horas_Medicas

Proyecto integrador de la Semana 3 para la asignatura **DEVPS1301-1-DEVOPS (IACC)**. Implementación contenerizada en entorno local de una aplicación web estática para la reserva de horas médicas mediante **Nginx (`nginx:alpine`)** y **Docker Compose**.

## Estructura del Repositorio
- `src/index.html`: Formulario interactivo simulado de reserva de horas médicas.
- `src/styles.css`: Hoja de estilos responsiva.
- `Dockerfile`: Imagen personalizada ligera basada en `nginx:alpine`.
- `docker-compose.yml`: Orquestación local del servicio en el puerto `8080`.
- `.env.example`: Variables de entorno de ejemplo sin credenciales reales.
- `.gitignore`: Exclusión de archivos sensibles y temporales.
- `.github/workflows/devops-automation.yml`: Validación continua en GitHub Actions.

## Ejecución y Monitoreo Local
1. Construir y levantar el contenedor:
   ```bash
   docker compose up -d --build
   ```
2. Verificar estado del servicio:
   ```bash
   docker compose ps
   ```
3. Abrir en el navegador: `http://localhost:8080`
4. Consultar registros y consumo de recursos:
   ```bash
   docker logs S3_Devops_salud_reserva_web
   docker stats --no-stream
   ```
5. Detener y limpiar el entorno:
   ```bash
   docker compose down
   ```