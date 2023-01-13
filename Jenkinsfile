pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'c8658293-c53d-4fc4-aad0-799ff23509ae', url: 'https://github.com/Kolawoleakinmosin/myInfra2023Repo']])            }
        }
    
        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        
        stage ("plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage (" Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}
    
