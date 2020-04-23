################################################################################
# start / stop / prepare
################################################################################

init:
	npm install

################################################################################
# releases
################################################################################

# patches a version
patch:
	npm run release:patch

# minor up
minor:
	npm run release:minor

# major up
release:
	npm run release

################################################################################
# docker building stuff
################################################################################
# you have to know what you're doing if your using this ;)

MC_CLIENT_VERSION=RELEASE.2020-04-19T19-17-53Z
REGISTRY=talentplatforms/mc
VCS_URL=https://github.com/talentplatforms/mcs

# DO NOT OVERRIDE!
_BUILD_DATE=$(shell echo $$(date -u +'%Y-%m-%dT%H:%M:%SZ'))
_VCS_REF=$(shell echo $$(git rev-parse --verify HEAD))
_IMAGE_LATEST=${REGISTRY}:latest
_IMAGE_TAGGED=${REGISTRY}:${MC_CLIENT_VERSION}

# builds the image and tags it with the latest tag and the more specific tag defined in _IMAGE_TAGGED
build:
	docker build \
	--rm \
	--build-arg BUILDKIT_INLINE_CACHE=1 \
	-t ${_IMAGE_LATEST} \
	-t ${_IMAGE_TAGGED} \
	.

# pushes the tagged image to the registry
# if no variables are set, it uses the defaults
push:
	docker push ${_IMAGE_LATEST}
	docker push ${_IMAGE_TAGGED}
