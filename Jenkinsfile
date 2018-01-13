node {
    checkout scm

    docker.withServer('unix:///var/run/docker.sock') {
        docker.image('docker:latest').withRun('--privileged -v /var/run/docker.sock:/var/run/docker.sock').inside {
            sh 'docker --version'
        }
    }
}
