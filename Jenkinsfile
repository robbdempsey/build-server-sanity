#!groovy
import jenkins.model.Jenkins

node {
	def buildNumber = env.BUILD_NUMBER
	def workspace = env.WORKSPACE
	// PRINT ENVIRONMENT TO JOB
	echo "BUILD-NUMBER: $buildNumber"
	echo "WORKSPACE   : $workspace"

    stage ("docker build") {
    	echo("do build")

    	sh 'docker build -f Dockerfile -t build-server-sanity:1.0.0'
    	
    }
	stage ("lint & test") {
	    parallel "lint": {
				echo("run lint")
	    	},
	    	"unit": {
	    		echo("do unit")
	    	}
	}
}
