pipeline {
    def app
    agent { dockerfile true }
    stages {
        stage('Clone repository') {
            checkout scm
        }
        stage('Build image') {
            app = docker.build("my-image:${env.BUILD_ID}")
        }

        stage('Test image') {
            app.inside {
                sh '#echo APP_NAME=$APP_NAME'
                sh '#echo APP_VERSION=$APP_VERSION'            }
        }
        stage('Push image') {
            docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                app.push("${env.BUILD_NUMBER}")
                app.push("latest")
            }
        }        
    }
}