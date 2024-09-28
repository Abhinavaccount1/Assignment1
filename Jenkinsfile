pipeline {
    agent any

    environment {
    SONARQUBE_Server = 'sonar'
    }
 
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
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('sonar') {
                  sh "mvn sonar:sonar -Dsonar.projectKey=Java-maven-project -Dsonar.projectName='Java-maven-project'"
            }
        }
      }
        stage("Quality gate") {
            steps {
                timeout(time: 1, unit: 'MINUTES') {
                waitForQualityGate abortPipeline: true
              }
                }
    }
 
    post {
        success {
            echo 'Build successful!'
        }
        
    }
}
