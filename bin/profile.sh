if [ -d "$HOME/.opt/android_sdk" ]; then
	ANDROID_SDK_ROOT="$HOME/.opt/android_sdk"
fi

###############

if [ -d "$ANDROID_SDK_ROOT" ]; then
	[ -d "$ANDROID_SDK_ROOT/tools" ] && PATH=$PATH:$ANDROID_SDK_ROOT/tools
	[ -d "$ANDROID_SDK_ROOT/tools/bin" ] && PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
	[ -d "$ANDROID_SDK_ROOT/platform-tools" ] && PATH=$ANDROID_SDK_ROOT/platform-tools:$PATH
	[ -d "$ANDROID_SDK_ROOT/emulator" ] && PATH=$PATH:$ANDROID_SDK_ROOT/emulator
	export PATH
fi

[ -z "$ANDROID_SDK_ROOT" ] || export ANDROID_HOME=$ANDROID_SDK_ROOT
[ -z "$ANDROID_STUDIO_ROOT" ] || export ANDROID_STUDIO_ROOT

if [ -d "$MVN_LOCAL_REPO" ]; then
	export GRADLE_OPTS=-Dmaven.repo.local="$MVN_LOCAL_REPO"
fi
