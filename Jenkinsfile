pipeline {
    agent {
        docker { 
            image 'docker:latest' 
            args '-v /var/run/docker.sock:/var/run/docker.sock'
            }
    }
    stages {
        stage('Test') {
            steps {
                sh 'docker --version'
            }
        }
    }
}