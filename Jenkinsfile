pipeline {
   agent any

   stages {

       stage('Build Docker Image') {
           steps {
               sh 'docker build -t cobol-app .'
           }
       }

       stage('Stop Old Container') {
           steps {
               sh 'docker rm -f cobol-container || true'
           }
       }

       stage('Run Container') {
           steps {
               sh 'docker run -d -p 8081:8081 --name cobol-container cobol-app'
           }
       }

   }
}

