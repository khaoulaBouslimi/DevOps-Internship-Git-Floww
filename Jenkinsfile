
    pipeline{
    agent any

    stages{


        stage('Cloning from GitHub') {
            steps {
                echo "Getting Project from GitHub";
                git branch: 'master', credentialsId: 'GitFlowCredential', url: 'https://github.com/khaoulaBouslimi/DevOps-Internship-Git-Floww.git'
            }
        }
    
     
        stage('Clean'){
            steps {
                sh 'mvn clean -DskipTests'
            }
        }
         stage('Compile'){
            steps {
                sh 'mvn compile -DskipTests '  
            }
        }
        




	    
    }
	    
  
	    
	    
}

            
