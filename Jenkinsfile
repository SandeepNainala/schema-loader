pipeline {
  agent any

  stages {

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t 673904956414.dkr.ecr.us-east-1.amazonaws.com/schema-loader:latest .'
        sh 'docker push  673904956414.dkr.ecr.us-east-1.amazonaws.com/schema-loader:latest'

      }
    }
  }
}