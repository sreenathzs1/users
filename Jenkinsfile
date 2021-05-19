pipeline {
    agent {
        label 'NODEJS'
    }

    stages {
        stage('compile code & Package') {
            steps {
             sh '''
             mvn clean package
             '''
            }  
        }
        //stage('make package') {
         //steps {
            // sh '''
            // mvn package
             //'''
            //}  

       // }

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
                  curl -f -v -u admin:admin123 --upload-file /home/ubuntu/workspace/CI-Pipelines/users-ci/users.zip http://172.31.11.166:8081/repository/users/users.zip
                  '''
           }

        }
    }
} 