pipeline {
    agent {
        docker {
            image 'node:6-alpine' 
            args '-p 7001:7001' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh './install.sh' 
            }
        }
        stage('dev') {
            steps {
                sh 'npm run dev'
            }
        }
    }
}