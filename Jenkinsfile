
pipeline {
    agent {
        label 'WINDOWS'
    }

    stages{        
        stage('Build') {
            steps {
                bat '%workspace%\\conf\\scripts\\build.bat "%workspace%\\BlogEngine\\BlogEngine.sln"'
            }
        }
        
       stage('Sonar') {
            steps {
                bat '%workspace%\\conf\\scripts\\sonar.bat "%workspace%\\BlogEngine\\BlogEngine.sln"'
            }
        }
        
    }
}
