pipeline{
    agent any
    tools{
        maven "mvn"
    }
  

    stages{
        stage('BUILD'){
            steps {
                bat 'mvn clean install -DskipTests'
            }
            post{
                success{
                    echo 'Now Archiving...'
                    archiveArtifacts artifacts: "**/target/*.war"
                }
            }
        }

        stage('UNIT test'){
            steps{
                bat 'mvn test'
            }
        }

        stage('INTEGRATION test'){
            steps{
                bat 'mvn verify -DskipUnitTests'
            }
        }

        stage('CODE ANALYSIS with CHECKSTYLE'){
            steps{
                bat 'mvn checkstyle:checkstyle'
            }
            post{
                success{
                    echo 'Generated analysis result'
                }
            }
        }

        stage('Code Analysis with SONARQUBE') {
            environment{
                scannerHome = tool 'SonarQube'

            }
            steps{
                
                withSonarQubeEnv(credentialsId: 'joujou',installationName: 'SonarQube') {
                    withCredentials([string(credentialsId: 'joujou', variable: 'joujou')]) {
                        bat '''
                            mvn sonar:sonar \
                            -Dsonar.projectKey=DevOps-Internship-Git-Floww \
                            -Dsonar.host.url=http://102.159.202.139:9000 \
                            -Dsonar.login=-469GxqQSz7.fs.
                            '''

                    } 
                    
                }

            }
            
        }

        



        
    }
}
