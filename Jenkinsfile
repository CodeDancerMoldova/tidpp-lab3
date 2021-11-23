pipeline {
    agent any

    options{
    timestamps()
    }

        parameters {
             booleanParam(name: 'CLEAN_WORKSPACE', defaultValue: true, description: 'Clean')

             booleanParam(name: 'TESTING_FRONTEND', defaultValue: false, description: 'Front')

         }



    environment {
         ON_SUCCESS_SEND_EMAIL = 'true'
         ON_FAILURE_SEND_EMAIL = 'true'
     }

    stages{
        stage('Build'){
            steps{
                git branch: 'master', changelog: false, poll: false, url: 'https://github.com/CodeDancerMoldova/tidpp-lab3.git'
                bat './mvnw clean compile'
            }
        }
        stage('Unit Tests'){
            steps{
                bat './mvnw test'
            }
        }
        stage('Front'){
        steps{
            script{
            if(TESTING_FRONTEND == true){
            echo "TESTING_FRONTEND = true"
            } else
            echo "TESTING_FRONTEND = false"
            }
        }
      }
    }


    post {
          always {

               emailext attachLog: true, body: 'Hai la o cafea sau la sushi?', subject: 'Дядя Богдан', to: 'lupusor.marinela@isa.utm.md'

               junit '**/target/surefire-reports/*.xml'

               script {
                   if (params.CLEAN_WORKSPACE == true) {
                       echo 'Deleting BUILD_TAG folder'
                       cleanWs()


                   } else {
                       echo 'No clean'
                   }
               }
          }


         success {
              echo "success!!!"

              script{
                          if(ON_SUCCESS_SEND_EMAIL == 'true'){
                          echo "email succes"
                          }
            }
         }
         unstable {
              echo "The build is unstable. Try fix it"
         }

          failure {
             echo "Something happened(Failure)"
             script{
                         if(ON_FAILURE_SEND_EMAIL == 'true'){
                         echo "email fail"
                         }
          }
    }
}
}