pipeline {
    agent any

    stages {
        stage('Start Dependencies') {
            steps {
                sh 'docker compose -f docker-compose.local.yml up -d'
                sh 'sleep 10'
            }
        }

        stage('Run Tests') {
            agent {
                docker {
                    image 'maven:3.9.9-eclipse-temurin-21-alpine'
                    args '--entrypoint=""'
                }
            }
            steps {
                sh 'mvn clean test'

                
            }
        }

        stage('Stop Dependencies') {
            steps {
                sh 'docker compose -f docker-compose.local.yml down'
            }
        }
    }
}
