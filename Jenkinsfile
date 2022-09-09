pipeline {
    agent{
        docker{
            image 'maven'
            args '-v $C:/Program Files/apache-maven-3.8.2-bin/apache-maven-3.8.2/bin'
        }
    stages{
        stage('Quality Gate Status Check'){
            script{
                withSonarQubeEnv('SonarQube'){
                    bat "mvn sonar:sonar"
                }
            
            timeout(time=1, unit:'HOURS'){
                def qg =waitForQualityGate()
                if (qg.Status != ok){
                    error"Pipeline aborted Due to quality gate failure : ${qg.status}"
                }
            }

            bat "mvn clean install"

            }
        }
    }
}
