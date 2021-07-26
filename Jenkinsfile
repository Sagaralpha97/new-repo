pipeline {
    agent any

    stages {
        stage('git pull') {
            steps {
                echo 'pulling from git'
                git  branch:'main', url:'https://github.com/Sagaralpha97/new-repo.git'
            }
       
        }
        
        stage('maven build') {
            steps {
                echo 'building code'
                sh "mvn clean package"
                
            }
        }
        
        stage('ansible deployment') {
            steps {
                echo 'deploying ansible'
                ansiblePlaybook credentialsId: 'ansible', disableHostKeyChecking: true, installation: 'Ansible', inventory: 'myhost', playbook: 'loadbalancer.yaml'
            }
        }
    }
    
    
}

