node {
    checkout scm

    docker.withServer('unix:///var/run/docker.sock') {
        docker.image('docker:latest').inside {
            sh 'docker --version'
        }
    }
}
