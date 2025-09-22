# Use the provided base image
FROM ghcr.io/berriai/litellm:main-stable

# Set the working directory to /app
WORKDIR /app

# Copy the configuration file into the container at /app

# Сбрасываем entrypoint базового образа, чтобы использовать shell-форму с подстановкой $PORT
ENTRYPOINT []

# Запускаем litellm, биндимся на 0.0.0.0 и используем $PORT (fallback 4000 локально)
CMD ["bash", "-lc", "litellm --host 0.0.0.0 --port ${PORT:-4000} --detailed_debug"]