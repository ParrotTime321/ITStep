
    pipeline {
    agent any
	    
	
	    
	     environment {
	workspace	= "${env.WORKSPACE}"
	branch		= "main"
	buildNumber	= "${env.BUILD_NUMBER}"
	     }
	    
  
	    
   


    stages {
        stage('GIT') {
            steps {
            git branch: 'main', url: 'https://github.com/ParrotTime321/ITStep.git'
		    
            }
        }
	    
	    
stage('Build and tag') {
           steps {
              sh "echo my build number $buildNumber"
		   sh "docker build -t v$buildNumber ."    
          }
        }
	    stage('Publish') {
          
		    steps {
			    sh  'docker push ievolved/exam v$buildnumber'
			  }
        }
	    
	     stage('Run Docker container') {
             
            steps {
                sh "docker -H ssh://jenkins@16.16.149.149 run -d -p 8888:8080 ievolved/exam"
 
            }
        }
    }
}
