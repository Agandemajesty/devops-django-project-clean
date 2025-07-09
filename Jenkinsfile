pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Agandemajesty/devops-django-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('agandemajesty/django-app:latest')
                }
            }
        }

        stage('Push to DockerHub') {
            steps {
                withDockerRegistry([credentialsId: 'dockerhub-creds1', url: '']) {
                    script {
                        docker.image('agandemajesty/django-app:latest').push()
                    }
                }
            }
        }
    }
}
