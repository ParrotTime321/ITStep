
    pipeline {
    agent any
	    
   tools
    {
       maven "Maven"
    }
	    
    environment {
    jobName           = "${env.JOB_NAME}"
    workspace         = "${env.WORKSPACE}"
    branch            = "main"
    buildNumber       = "${env.BUILD_NUMBER}" 

  }


    stages {
        stage('GIT') {
            steps {
            git branch: 'main', url: 'https://github.com/ParrotTime321/ITStep.git'
		    sh 'git pull'
            }
        }
	    
	     stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
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
        withDockerRegistry([ credentialsId: "dockerHub", url: "" ]) {
          sh  'docker push ievolved/exam:v$buildnumber'
        
        }
                  
          }
        }
	    
	     stage('Run Docker container') {
             
            steps {
                sh "docker -H ssh://jenkins@16.16.149.149 run -d -p 8888:8080 ievolved/exam"
 
            }
        }
    }
}
