
#!/usr/bin/env sh
# Forge requires a configured set of both JVM and program arguments.
# Add custom JVM arguments to the user_jvm_args.txt
# Add custom program arguments {such as nogui} to this file in the next line before the "$@" or
#  pass them to this script directly

[[ -f /etc/profile.d/java.sh ]] && . /etc/profile.d/java.sh
SERVER_DIR="$(pwd)"
FORGE_VERSION='1.20.1-47.1.0'
java @user_jvm_args.txt @libraries/net/minecraftforge/forge/${FORGE_VERSION}/unix_args.txt "$@"
