pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Ansk29/scientific-calculator.git'
            }
        }

        stage('Build') {
            steps {
                sh 'cmake -S . -B build'
                sh 'cmake --build build'
            }
        }

        stage('Run Unit Tests') {
            steps {
                sh 'cd build && ctest --output-on-failure'
            }
        }

        stage('Containerize') {
            steps {
                sh 'docker build -t ansk29/scientific-calculator .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh 'docker push ansk29/scientific-calculator'
                }
            }
        }

        stage('Deploy Locally with Docker') {
            steps {
                sh 'docker run --rm -d --name sci-calc ansk29/scientific-calculator'
            }
        }
    }
}
