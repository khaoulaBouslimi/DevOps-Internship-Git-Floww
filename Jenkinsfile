
node
{
    stage('clonning from GIT')
    {
git branch: 'master', credentialsId: 'newone',  url: 'https://github.com/khaoulaBouslimi/DevOps-Internship-Git-Floww.git'

    }
    
    stage('SonarQube Analysis') {
       
    def scannerHome = tool 'SonarQube'
      withSonarQubeEnv('SonarQube') {
       bat """ \
     -D sonar.projectVersion=0.0.1-SNAPSHOT \
       -D sonar.login=admin \
      -D sonar.password=-469GxqQSz7.fs. \
      -D sonar.projectBaseDir=C:/ProgramData/Jenkins/.jenkins/workspace/SonarQube-internship \
        -D sonar.projectKey=com.example \
        -D sonar.sourceEncoding=UTF-8 \
        -D sonar.language=java \
        -D sonar.sources=DevOps-Internship-Git-Floww/src/main \
        -D sonar.tests=DevOps-Internship-Git-Floww/src/test \
        -D sonar.host.url=http://196.234.224.13:9000/"""
        }
}
}
