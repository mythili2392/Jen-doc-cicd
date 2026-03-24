pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/mythili2392/Jen-doc-cicd.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t cobol-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run --rm cobol-app'
            }
        }

    }
}
