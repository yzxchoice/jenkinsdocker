Jenkinsfile (Declarative Pipeline)
pipeline {
    agent {
        docker {
            image 'node:8.15.0-alpine' 
            args '-p 7001:7001' 
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}