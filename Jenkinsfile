pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'echo APP_NAME=$APP_NAME'
                sh 'echo APP_VERSION=$APP_VERSION'
            }
        }
    }
}