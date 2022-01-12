
#winpty docker run \
#    --rm \
#    --tty \
#    --interactive \
#    --volume="<project_absolut_path>project01:/usr/src" \
#    --network="host" \
#    --name="sonar_scanner" \
#    sonarsource/sonar-scanner-cli bash

winpty docker-compose run --rm -ti sonarscanner sonar-scanner -X
