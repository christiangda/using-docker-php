pipeline {
    // Using Dockerfile from git repo
    agent { dockerfile true }

    // Use official docker container to build my docker image
    // Its is neccessary because we are using a Jenkins official images without docker installed inside
    def docker-cmd = docker.image("docker")

    stages {
        stage('Clone repository') {
            checkout scm
        }
        stage('Build image') {
             docker-cmd.inside {
                 sh 'docker build'
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