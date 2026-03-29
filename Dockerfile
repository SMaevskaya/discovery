# Используем официальный образ OpenJDK
FROM openjdk:27-ea-slim

# Рабочая директория в контейнере
WORKDIR /app

# Копируем JAR файл приложения
COPY target/*.jar app.jar

# Открываем порт
EXPOSE 8761

# Команда запуска
ENTRYPOINT ["java", "-jar", "app.jar"]