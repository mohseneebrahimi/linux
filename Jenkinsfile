pipeline {
    agent any

    tools {
        maven 'Maven3'
    }

    stages {
        stage('Build') {
            steps {
                dir('demo4') {
                    sh 'mvn install'
                }
            }
        }
    }
}
