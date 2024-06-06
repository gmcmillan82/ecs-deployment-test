# Use alpine base for smaller image
FROM python:3.9-alpine

# Set name of the app
ENV FLASK_APP="hello"

WORKDIR /app

COPY . .

RUN pip install .

# Use default Flask port
EXPOSE 5000

# Run flask app
CMD ["flask", "run", "--host", "0.0.0.0"]

