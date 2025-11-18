FROM jenkins/jenkins:lts

# Cambiar a usuario root para instalar dependencias
USER root

# Instalar Docker client (sin daemon)
RUN apt-get update && \
    apt-get install -y docker.io && \
    apt-get clean

# Devolver permisos a Jenkins
USER jenkins

# Exponer puerto de Jenkins
EXPOSE 8080

# Jenkins ya expone 50000 para los agentes
EXPOSE 50000
