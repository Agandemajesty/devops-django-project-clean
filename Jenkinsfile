pipeline {
    agent any

    stages {
        stage('Clone repo') {
            steps {
                git 'https://github.com/Agandemajesty/devops-django-project-clean.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker-compose build'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}
