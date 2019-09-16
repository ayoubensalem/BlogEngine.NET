
pipeline {
    agent {
        label 'WINDOWS'
    }

    stages{   

        stage('CleanWS') {
            steps {
                script {
                    cleanWs()
                } 
            }
        }  
        stage('Checkout') {
            steps {

                checkout([$class: 'GitSCM', branches: [[name: "origin/master"]], 
                    doGenerateSubmoduleConfigurations: false, 
                    extensions: [[$class: 'CleanBeforeCheckout']], 
                    submoduleCfg: [], 
                    userRemoteConfigs: [[url: 'https://github.com/ayoubensalem/BlogEngine.NET.git']]]
                )
            }
        }   
        stage('Build') {
            steps {
                bat '%workspace%\\conf\\scripts\\build.bat "%workspace%\\BlogEngine\\BlogEngine.sln"'
            }
        }
        stage('Package') {
            steps {
                bat '%workspace%\\conf\\scripts\\package.bat "%workspace%\\BlogEngine\\BlogEngine.sln"'
            }
        }
    //    stage('Sonar') {
    //         steps {
    //             bat '%workspace%\\conf\\scripts\\sonar.bat "%workspace%\\BlogEngine\\BlogEngine.sln"'
    //         }
    //     }
        
    }
}
