kb_template() {
  cat << 'EOF'
function_name() {
  cat << 'EOS'
YOUR MULTILINE CONTENT HERE
- quotes: "hello" 'world'
- dollar signs: $PATH $USER $HOME
- backslashes: \n \t \\
- special symbols: * ? {} [] ()
EVERYTHING is printed EXACTLY as typed.
EOS
}
EOF
}
