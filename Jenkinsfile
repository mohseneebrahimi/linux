pipeline {
    agent any

    environment {
        // Name deines Docker-Images
        IMAGE_NAME = "mein-app-test"
		DOCKER_USER = "mohseneebrahimi"
    }
	
	stages {
		stage('Docker Build') {
			steps {
				// Baut das Image basierend auf dem Dockerfile im Hauptverzeichnis
				// Falls das Dockerfile in demo4 liegt, nutze : dir('demo4')
				// sh "docker build -t ${IMAGE_NAME}:${BUILD_NUMBER} ."
				// sh "docker build -t ${IMAGE_NAME}:latest ."
				sh "docker build -t ${DOCKER_USER}/${IMAGE_NAME}:${BUILD_NUMBER} ."
                sh "docker build -t ${DOCKER_USER}/${IMAGE_NAME}:latest ."
			}
		}


	stage('Push to DockerHub') {
            steps {
                // Hier ziehen wir die Zugangsdaten sicher aus Jenkins
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', 
                                 passwordVariable: 'DOCKER_PASS', 
                                 usernameVariable: 'DOCKER_USER_ENV')]) {
                    
                    // Login bei DockerHub
                    sh "echo ${DOCKER_PASS} | docker login -u ${DOCKER_USER_ENV} --password-stdin"
                    
                    // Push der Images
                    sh "docker push ${DOCKER_USER}/${IMAGE_NAME}:${BUILD_NUMBER}"
                    sh "docker push ${DOCKER_USER}/${IMAGE_NAME}:latest"
                    
                    // Logout
                    sh "docker logout"
                }
            }
        }

		
		stage('Docker Test') {
			steps {
				// Kurzer Check, ob das Image existiert
				sh "docker images | grep ${IMAGE_NAME}"
			}
		}

		//stage('Docker run') {
		//	steps {
		//		sh "docker run -p 8082:8080 ${IMAGE_NAME}:latest"
		//	}
		//}
	}
	post {
			success {
				echo "Erfolg! Image ${IMAGE_NAME} wurde erstellt."
			}
			always {
				// Optional: Aufräumen des Workspaces
				cleanWs()
			}
	}
}
