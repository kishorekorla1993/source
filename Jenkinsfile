pipeline {
    agent any

    stages {
        stage('Checkout') { 
            steps {
                checkout scmGit(branches: [[name: '*/feature']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/kishorekorla1993/source.git']])
            }
        }
        stage('docker'){
            steps{
                
            sh 'docker build -t img5 .'
            }
        }
        stage('docker_cont'){
            steps{
                
            sh 'docker run -itd --name contkishore -p 4050:80 img5'
            }
        }
    }
}
