pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    stages {
       
        stage('Test & Build') {
            steps {
                sh "'${tool name: 'Maven', type: 'maven'}/bin/mvn' clean install"
            }
        }
    stage ('Deploy to Remote Tomcat Server ') {
        steps {
            script {
                  sshagent(['jenkins-privatekey']) {
                  sh 'scp -o StrictHostKeyChecking=no target/*.war tarique@ip:/opt/tomcat/apache-tomcat-9.0.71/webapps/'
            }
          }
        }
      }    
    }
}
