echo "set JAVA env ..."
setx JAVA_HOME "D:/lang/java"
setx PATH "%PATH%;%JAVA_HOME%/bin"

echo "set NODE env ..."
setx NODE_HOME "D:/lang/node"
setx PATH "%PATH%;%NODE_HOME/%"

echo "set RUST env ..."
setx RUSTUP_HOME "D:/lang/rust"
setx CARGO_HOME "D:/lang/cargo"

