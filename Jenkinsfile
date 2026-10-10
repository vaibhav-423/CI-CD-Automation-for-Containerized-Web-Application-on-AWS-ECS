
pipeline {
    agent any

    stages {
        stage('GitHub Trigger Test') {
            steps {
                echo 'Jenkins pipeline triggered successfully!'
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t stackcraft:latest .'
            }
        }
    }
}
