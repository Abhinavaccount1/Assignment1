pipeline {
    agent any
 
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/Abhinavaccount1/Assignment1.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
    }
 
    post {
        success {
            echo 'Build successful!'
        }
        
    }
}
