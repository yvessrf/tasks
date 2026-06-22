FROM python:3.11-slim

WORKDIR /app

# Copia dependências primeiro (melhora cache do Docker)
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copia o código
COPY . .

# Expõe porta da API
EXPOSE 8000

# comando para rodar a aplicação
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]