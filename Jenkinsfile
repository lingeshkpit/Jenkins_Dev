pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker version'
            }
        }
        stage('Test') {
            steps {
                sh 'docker images'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker pull bitnami/jenkins:latest'
            }
        }
    }
}
