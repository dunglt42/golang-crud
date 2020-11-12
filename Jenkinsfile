pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/dunglt42/golang-crud.git'
            }
        }
		stage('Build') {
			steps {
				withDockerRegistry(credentialsId: 'aws-docker-hub', url: 'https://index.docker.io/v1/') {
				sh label: '', script: 'docker build -t dunglt42/golang-crud-images:v1 .'
				sh label: '', script: 'docker push dunglt42/golang-crud-images:v1'
				}
			}
		}		
    }
}
