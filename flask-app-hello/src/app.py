import os

from flask import Flask
import redis

app = Flask(__name__)

redis_host = os.getenv("REDIS_HOST", "redis")
redis_port = int(os.getenv("REDIS_PORT", "6379"))
redis_client = redis.Redis(host=redis_host, port=redis_port, decode_responses=True)


@app.route("/")
def hello():
    try:
        redis_client.ping()
        return f"Hello World! Redis connected at {redis_host}:{redis_port}"
    except Exception as exc:
        return f"Hello World! Redis connection failed: {exc}", 500
