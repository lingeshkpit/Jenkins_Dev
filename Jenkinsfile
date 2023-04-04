pipeline {
    agent any 
    environment {
    DOCKERHUB_CREDENTIALS = credentials('DOCKERHUB_CREDENTIALS_PSW')
    }
    stages { 
        stage('SCM Checkout') {
            steps{
            git 'https://github.com/lingeshkpit/Jenkins_Dev.git'
            }
        }
        stage('Docker') {
            steps {
                sh 'docker version'
            }
        }
        stage('Docker_images') {
            steps {
                sh 'docker images'
            }
        }
        stage('Docker_pull') {
            steps {
                sh 'docker pull bitnami/jenkins:latest'
            }
        }
        
        stage('Build docker image') {
            steps {
                sh 'docker build -t devops .'
            }
        }
        stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u lingeswararao --password-stdin'
            }
        }
         stage('push image') {
            steps{
                sh 'docker push lingeswararao/myweb:tagname:$BUILD_NUMBER'
            }
        }
        stage('Docker_RMI') {
            steps {
                sh 'docker rmi $(docker images -q)'
            }
          }
    }
    
}

