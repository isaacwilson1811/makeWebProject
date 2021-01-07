if [[ -z $1 ]]; then
    echo "Please provide project name as argument 1"
else
    mkdir $1
    echo "Making new project named ${1}"
    touch $1/index.html
    echo '<!DOCTYPE html>\n<html lang="en">\n<head>\n\t<title>New Page</title>\n\t<link rel="stylesheet" href="style.css">\n\t<meta charset="utf-8">\n</head>\n<body>\n\t<h1></h1>\n<script src="script.js"></script>\n</body>\n</html>' > $1/index.html
    touch $1/style.css
    echo 'h1::before {\n\t\tcontent: "CSS is working";\n\t}' > $1/style.css
    touch $1/script.js
    echo 'alert("JavaScript is working");' > $1/script.js
    open $1/index.html -a ~/../../Applications/"Visual Studio Code.app"
    open $1/style.css -a ~/../../Applications/"Visual Studio Code.app"
    open $1/script.js -a ~/../../Applications/"Visual Studio Code.app"
    open $1/index.html -a ~/../../Applications/"Google Chrome.app"
fi
