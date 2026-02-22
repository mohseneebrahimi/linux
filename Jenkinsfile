pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                   cd demo4
                   mvn clean install
                '''
            }
        }
    }
}
