pipeline {
environment {
    registry = "vamsi1967/jenkinsintegration"
    registryCredentials = "dockerhub1"
  }
agents any

stages {
     
     stage('Building image') {
       steps{
          script{
               docker.build registry + ":$BUILD_NUMBER"
               }
             }
          }
      stage('Deploy Image') {
       steps{
           docker.withRegistry('', registryCredentials){
             dockerImage.push()
               }
             }
           }
     }
  }   
