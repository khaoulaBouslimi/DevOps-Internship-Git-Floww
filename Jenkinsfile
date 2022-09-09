pipeline {
    agent any
    stages {
        stage('git repo & clean') {
            steps {
               
                bat "git clone https://github.com/khaoulaBouslimi/DevOps-Internship-Git-Floww.git"
                bat "mvn clean -f DevOps-Internship-Git-Floww"
            }
        }
        stage('install') {
            steps {
                bat "mvn install -f DevOps-Internship-Git-Floww"
            }
        }
        stage('test') {
            steps {
                bat "mvn test -f DevOps-Internship-Git-Floww"
            }
        }
        stage('package') {
            steps {
                bat "mvn package -f DevOps-Internship-Git-Floww"
            }
        }
    }
}
