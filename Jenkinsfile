node {
    checkout scm

    docker.withServer('unix:///var/run/docker.sock') {
        def docker = docker.image('docker:latest')
        docker.pull() // make sure we have the latest available from Docker Hub
        docker.inside {
           sh 'docker --version'
        }
    }
}
