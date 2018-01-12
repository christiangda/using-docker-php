pipeline {
    stages {
        stage('Clean workspace') {
            steps {
                deleteDir()
                sh 'ls -lah'
            }
        }
        stage('Clone repository') {
            steps {
                checkout scm
            }
        }
        stage('Build image') {
            agent {
                docker { image 'maven:3-alpine' }
            }
            steps {
                sh 'docker build .'
            }
        }

        // stage('Test image') {
        //     app.inside {
        //         sh '#echo APP_NAME=$APP_NAME'
        //         sh '#echo APP_VERSION=$APP_VERSION'            }
        // }
        // stage('Push image') {
        //     docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
        //         app.push("${env.BUILD_NUMBER}")
        //         app.push("latest")
        //     }
        // }        
    }
}