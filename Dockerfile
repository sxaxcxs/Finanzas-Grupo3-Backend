# Usa una imagen con JDK
FROM eclipse-temurin:21-jdk

# Establece el directorio de trabajo
WORKDIR /app

# Copia el wrapper y el pom
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

# Da permisos de ejecución al wrapper
RUN chmod +x mvnw

# Descarga dependencias
RUN ./mvnw dependency:go-offline

# Copia todo el proyecto y compila
COPY . .
RUN ./mvnw clean package -DskipTests

# Expone el puerto que usa la app
EXPOSE 8080

# Comando para correr el JAR
CMD ["java", "-jar", "target/BackEnd-0.0.1-SNAPSHOT.jar"]