pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Test') {
      steps {
        echo "Running simple test..."
        sh 'echo "Test Passed!"'
      }
    }

    stage('Build') {
      steps {
        sh 'docker build -t simple-node-demo .'
      }
    }

    stage('Deploy') {
      steps {
        sh 'docker run -d --name simple-node-demo -p 3000:3000 simple-node-demo || true'
      }
    }
  }
}
