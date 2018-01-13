node {
    checkout scm

    docker.withServer('unix:///var/run/docker.sock') {
        def img = docker.image('docker:latest').inside {
            sh 'docker --version'
        }
    }
}
