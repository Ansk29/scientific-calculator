pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "ansk29/scientific-calculator"
        DOCKER_TAG = "latest"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Ansk29/scientific-calculator.git'
            }
        }

        stage('Build') {
            steps {
                sh '''
                    rm -rf build   # Clean previous build
                    cmake -S . -B build
                    cmake --build build
                '''
            }
        }

        stage('Run Unit Tests') {
            steps {
                sh '''
                    cd build
                    ctest --output-on-failure
                '''
            }
        }

        stage('Containerize') {
            steps {
                sh '''
                    docker build -t $DOCKER_IMAGE:$DOCKER_TAG .
                '''
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh '''
                        docker push $DOCKER_IMAGE:$DOCKER_TAG
                    '''
                }
            }
        }

        stage('Deploy Locally') {
            steps {
                sh '''
                    docker run -d --name scientific_calculator_container $DOCKER_IMAGE:$DOCKER_TAG
                '''
            }
        }
    }

    post {
        success {
            echo "Pipeline executed successfully!"
        }
        failure {
            echo "Pipeline failed. Check logs for errors."
        }
    }
}

