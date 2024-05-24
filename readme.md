# Django Account API

This is a Django-based API project for user registration and authentication, Dockerized for easy deployment.

## Features

- User registration and authentication
- RESTful API using Django Rest Framework
- Token-based authentication using SimpleJWT
- Dockerized for easy setup and deployment

## Prerequisites

- Python 3.12
- Docker
- Docker Compose

## Installation

### Local Setup

1. **Clone the repository:**

   ```sh
   git clone https://github.com/kurostanley/django-account-api.git
   cd django-account-api
   ```

2. **Create and activate a virtual environment:**

   ```sh
   python -m venv myprojectenv
   source myprojectenv/bin/activate  # On Windows use `myprojectenv\Scripts\activate`
   ```

3. **Install dependencies:**

   ```sh
   pip install -r requirements.txt
   ```

4. **Run migrations:**

   ```sh
   python manage.py migrate
   ```

5. **Run the development server:**

   ```sh
   python manage.py runserver
   ```

### Docker Setup

1. **Build and run the Docker containers:**

   ```sh
   docker-compose up --build
   ```

2. **Access the application:**

   Open your browser and go to `http://localhost:8000`

## Usage

### API Endpoints

- **Register:** `POST /api/accounts/register/`
- **Login:** `POST /api/accounts/login/`

### Example Requests

- **Register:**

  ```sh
  curl -X POST http://localhost:8000/api/accounts/register/ \
  -H "Content-Type: application/json" \
  -d '{"username": "testuser", "password": "testpassword", "email": "test@example.com"}'
  ```

- **Login:**

  ```sh
  curl -X POST http://localhost:8000/api/accounts/login/ \
  -H "Content-Type: application/json" \
  -d '{"username": "testuser", "password": "testpassword"}'
  ```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any bugs, enhancements, or features.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
