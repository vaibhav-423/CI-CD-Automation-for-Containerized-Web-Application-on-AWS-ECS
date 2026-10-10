
pipeline {
    agent any

    stages {
        stage('GitHub Trigger Test') {
            steps {
                echo 'Jenkins pipeline triggered successfully!!'
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn clean package'
                echo 'Jenkins pipeline Build successful!!'
            }
        }
    }
}
