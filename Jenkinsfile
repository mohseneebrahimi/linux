pipeline {
    agent any

    environment {
        // Name deines Docker-Images
        IMAGE_NAME = "mein-app-test"
    }
	
	stage('Docker Build') {
		steps {
			// Baut das Image basierend auf dem Dockerfile im Hauptverzeichnis
			// Falls das Dockerfile in demo4 liegt, nutze : dir('demo4')
			sh "docker build -t ${IMAGE_NAME}:${BUILD_NUMBER} ."
			sh "docker build -t ${IMAGE_NAME}:latest ."
		}
	}
	
	stage('Docker Test') {
		steps {
			// Kurzer Check, ob das Image existiert
			sh "docker images | grep ${IMAGE_NAME}"
		}
	}
}
