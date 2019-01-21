pipeline {
    agent {
        docker {
            image 'node:8.15.0-alpine' 
            args '-p 7001:7001' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm i --registry=http://http://10.63.5.12:8081/repository/npmgroup/' 
            }
        }
        stage('dev') {
            steps {
                sh 'npm run dev'
            }
        }
    }
}