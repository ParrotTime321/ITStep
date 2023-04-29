
    pipeline {
    agent any
    environment {
		buildNumber       = "${env.BUILD_NUMBER}"
		workspace         = "${env.WORKSPACE}"
		jobName           = "${env.JOB_NAME}"
		Name              = "Sasha"
	}
       parameters {
  choice choices: ['Nazar','SashaH','SashaI','Vlad','Maks','Vasyl','Andry','SashaONlineGuys'], name: 'Names'

}

    stages {
        stage('GIT') {
            steps {
            git branch: 'main', url: 'https://github.com/ParrotTime321/ITStep.git'
            }
        }
        stage('READ') {
         steps{
			dir("$workspace"){
				sh 'bash bash.sh $Names'
			}
		}
        }
    }
}
