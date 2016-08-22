docker rm -vf node
rmdir nodejs /s /q
docker run --name=node node:6.4.0 node --version
docker cp "node:c:\Program Files\nodejs" nodejs
docker rm -vf node
docker build --isolation=hyperv -t node:6.4.0-nano .

docker tag node:6.4.0-nano node:latest-nano || exit /b
docker tag node:6.4.0-nano node:6.6-nano || exit /b
docker tag node:6.4.0-nano node:6-nano || exit /b

docker build --isolation=hyperv -t node:6.4.0-nano-onbuild onbuild
docker tag node:6.4.0-nano-onbuild node:6.6-nano-onbuild || exit /b
docker tag node:6.4.0-nano-onbuild node:6-nano-onbuild || exit /b