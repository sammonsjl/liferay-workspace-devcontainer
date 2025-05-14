#pushd .. >/dev/null

docker run --rm -v ./:/workspace -w /workspace \
  --user root liferay/jdk21:latest \
  ./gradlew --gradle-user-home=/home/liferay/.gradle clean createDockerfile

#popd >/dev/null
