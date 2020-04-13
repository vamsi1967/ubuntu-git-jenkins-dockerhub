pipeline {
environment {
    registry = "vamsi1967/jenkinsintegration"
    registryCredentials = "docker"
    dockerImage = ''
  }
agents any

stages {
     
     stage('Building image') {
       steps{
          script{
               dockerImage = docker.build registry + ":$BUILD_NUMBER"
               }
             }
          }
      stage('Deploy Image') {
       steps{
           docker.withRegistry('', registryCredentials) {
        
             dockerImage.push()
               }
             }
           }
     }
  }   

