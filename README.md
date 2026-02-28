# Giropops Senhas 🛡️

This repository contains the **Giropops-Senhas** project, developed as part of my studies in the **PICK (Intensive Program in Containers and Kubernetes)** training by **LINUXtips**.

The project is a web application for generating random passwords, focused on demonstrating the integration between a Python application, a NoSQL database (Redis), and the export of metrics for monitoring.

## 🚀 Features

- **Password Generation:** A simple interface to generate secure strings.
- **Global Counter:** Uses **Redis** to persist the total number of passwords generated.
- **Metrics:** Integrated `/metrics` endpoint for data collection via **Prometheus**.
- **Healthcheck:** `/health` endpoint for availability checks.

## 🛠️ Technologies

* **Language:** Python 3.x
* **Web Framework:** Flask
* **Database:** Redis
* **Monitoring:** Prometheus Client library

## 📂 File Structure

```text
.
├── app.py            # Main application code
├── requirements.txt  # Project dependencies
├── static/           # Static files (CSS/JS)
└── templates/        # HTML templates (Jinja2)
