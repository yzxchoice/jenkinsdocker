pipeline {
    agent {
        docker {
            image 'node:8.15.0-alpine' 
            args '-p 7001:7001' 
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm i --registry=http://http://10.63.5.12:8081/repository/npmgroup/' 
            }
        }
        stage('dev') {
            when {
                branch 'develop'
            }
            steps {
                sh 'npm run dev'
                sh 'dev start'
            }
        }
        stage('product') {
            when {
                branch 'master'
            }
            steps {
                sh 'npm run start'
                sh 'echo "end"'
            }
        }
    }
}