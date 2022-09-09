pipeline {
    stage{
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
