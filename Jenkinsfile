pipeline {
    agent any

    stages {
       stage('Checkout SCM') {
    steps {
        checkout scm
            }
       }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("agandemajesty/django-app:latest")
                }
            }
        }

        stage('Push to DockerHub') {
            steps {
                script {
                    docker.withRegistry('', 'dockerhub-creds1') {
                        dockerImage.push()
                    }
                }
            }
        }
    }

    post {
        success {
            echo '✅ Build and push successful!'
        }
        failure {
            echo '❌ Build failed!'
        }
    }
}
