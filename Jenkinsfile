pipeline {
    agent any
    stages {
        stage("Build") {
            steps {
                sh "docker build . -t ola_unicamp"
            }
        }
        stage("Run") {
            steps {
                sh "docker run --rm ola_unicamp"
            }
        }
    }
}
