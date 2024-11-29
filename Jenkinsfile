pipeline {
        agent any
        stages {
                stage ("Build"){
                        steps{
                                sh '''
                                        ./build/mvn.sh mvn -B -DskipTests clean package
                                        ./build/build.sh
                                '''
                        }
                        post{
                            success {
                                archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint:true
                            }
                        }
                }
                stage ("Test"){
                    steps {
                            sh '''
                                    
                                    ./test/test.sh
                            '''
                    }
                    post {
                        always {
                            junit 'java-app/target/reports/*.xml'
                        }
                    }
                }
                stage ('Push'){
                    steps{
                            sh '''
                                    ./push/push.sh
                            '''
                    }
                }
                stage ("Deploy"){
                    steps{
                            sh '''
                                    ./deploy/deploy.sh
                            '''
                    }
                }
        }
}

