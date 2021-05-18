pipeline {
    agent {
        label 'NODEJS'
    }

    stages {

        stage('compile code') {
         steps {
             sh '''
             mvn compile
             '''
            }  

        }

        stage('make package') {
         steps {
             sh '''
             mvn package
             '''
            }  

        }

        stage('preapare Artifact') {
            steps {
                sh '''
                 cp target/*.jar users.jar
                 zip -r users.zip users.jar
                 '''
            }
        }

        stage('Upload Artifacts') {
            steps {
                sh '''
                  curl -f -v -u admin:admin123 --upload-file /var/lib/jenkins/workspace/CI-Pipelines/users.zip http://172.31.11.166:8081/repository/users/users.zip
                  '''
           }

        }
    }
} 