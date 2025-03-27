with import <nixpkgs> {};
writeShellScriptBin "beefy" ''



#####################################################################
#####################################################################
#####################################################################
## Update the commithash to the latest commit hash of the repo
#####################################################################
#####################################################################
#####################################################################


commithash=5eeaf567b31670bd5134b834d03a8b5cb2b66d98
url=github:cbdeane/dev_flakes/''${commithash}?dir=






#####################################################################
#####################################################################
#####################################################################
## All versions
#####################################################################
#####################################################################
#####################################################################


#####################################################################
# initialize node template from github repo
#####################################################################


node22()
{
	nix flake init -t ''${url}node/nodejs_22_template
	direnv allow
}

#####################################################################
# initialize c template from github repo
#####################################################################

c()
{
	nix flake init -t ''${url}c/clang_template
	direnv allow
}

#####################################################################
# initialize go template from github repo
#####################################################################

go_1_23()
{
	nix flake init -t ''${url}go/go_1_23_template
	direnv allow
}

#####################################################################
# initialize java template from github repo
#####################################################################

jdk21()
{
	nix flake init -t ''${url}jdk21/jdk21_template
	direnv allow
}

#####################################################################
# initialize python 3.11 template from github repo
#####################################################################

python_3_11()
{
	nix flake init -t ''${url}python/python_3_11_template
	direnv allow
}

python_3_12()
{
	nix flake init -t ''${url}python/python_3_12_template
	direnv allow
}

python_3_13()
{
	nix flake init -t ''${url}python/python_3_13_template
	direnv allow
}

python_3_14()
{
	nix flake init -t ''${url}python/python_3_14_template
	direnv allow
}

#####################################################################
# initialize rust template from github repo
#####################################################################

rustc_cargo()
{
	nix flake init -t ''${url}rust/rustc_cargo_template
	direnv allow
}

#####################################################################
# initialize zig from github repo
#####################################################################

zig_0_11()
{
	nix flake init -t ''${url}zig_0_11/zig_0_11_template
	direnv allow
}

zig_0_12()
{	
	nix flake init -t ''${url}zig_0_12/zig_0_12_template
	direnv allow
}

dotnet_9()
{
	nix flake init -t ''${url}csharp/dotnet_9_template
	direnv allow
}

webpack()
{
    npm install --save-dev webpack webpack-cli
    npm install --save-dev html-webpack-plugin
    npm install --save-dev style-loader css loader
    npm install --save-dev html-loader
    npm install --save-dev webpack-dev-server
}

webserve()
{
    npx webpack serve
}


#####################################################################
#####################################################################
#####################################################################
## handle arguments 
#####################################################################
#####################################################################
#####################################################################

process_args() {
    case $1 in
	c)
	    c
	    ;;
	dotnet_9)
	    dotnet_9
	    ;;
	go_1_23)
	    go_1_23
	    ;;
	jdk21)
	    jdk21
	    ;;
	node22)
	    node22
	    ;;
	python_3_11)
	    python_3_11
	    ;;
	python_3_12)
	    python_3_12
	    ;;
	python_3_13)
	    python_3_13
	    ;;
	python_3_14)
	    python_3_14
	    ;;
	rust)
	    rustc_cargo
	    ;;
	webpack)
	    webpack
	    ;;
	webserve)
	    webserve
	    ;;
	zig_0_11)
	    zig_0_11
	    ;;
	zig_0_12)
	    zig_0_12
	    ;;
	*)
	    echo ""
	    echo "Options:"
	    echo ""
	    echo "c"
	    echo "dotnet_9"
	    echo "go_1_23"
	    echo "jdk21"
	    echo "node22"
	    echo "python_3_11"
	    echo "python_3_12"
	    echo "python_3_13"
	    echo "python_3_14"
	    echo "rust"
	    echo "webpack"
	    echo "webserve"
	    echo "zig_0_11"
	    echo "zig_0_12"
	    ;;
    esac
}






#####################################################################
#####################################################################
#####################################################################
## logo print function
#####################################################################
#####################################################################
#####################################################################

printlogo() {
echo ""
echo "  ____  ______ ______ ________     __ "
echo " |  _ \|  ____|  ____|  ____\ \   / / "
echo " | |_) | |__  | |__  | |__   \ \_/ /  "
echo " |  _ <|  __| |  __| |  __|   \   /   "
echo " | |_) | |____| |____| |       | |    "
echo " |____/|______|______|_|       |_|    "
echo "                                      "
echo " Builds Every Environment For You"
echo " by Char0"
echo ""
echo ""
}





#####################################################################
#####################################################################
#####################################################################
## main
#####################################################################
#####################################################################
#####################################################################



printlogo
process_args $1
'' 


