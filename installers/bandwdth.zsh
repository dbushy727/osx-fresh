#!/bin/zsh

install_bandwdth() {
    code_dir=$1
    mkdir -p $code_dir
    
    if [ ! -f $code_dir/bandwdth ]; then
        git clone git@github.com:Bandwdth/bandwdth.git $code_dir/bandwdth
    fi

    cd $code_dir/bandwdth/bandwdth-be
    if [ ! -f $code_dir/bandwdth/bandwdth-be/venv ]; then
        python -m venv venv
    fi
    source venv/bin/activate
    python -m pip install -r requirements.txt

    read -q "?$(echo -e 'Please create a .env in {$code_dir}/bandwdth-be and continue.\n(https://www.notion.so/lightyearai/Getting-Started-Locally-a0bfa87009054abe8fca0133db758079#a2afeee7c673495b9b6c733143af6e20): \n\b')"
    if [ ! -f $code_dir/bandwdth/bandwdth-be/.env ]; then
        echo ".env does not exist" >&2
        exit 1
    fi

    make build up setup

    cd $code_dir/bandwdth/bandwdth-fe
    read -q "?$(echo -e 'Please create a env.js and cypress.env.json in {$code_dir}/bandwdth-fe and continue.\n(https://www.notion.so/lightyearai/Getting-Started-Locally-a0bfa87009054abe8fca0133db758079#f4d843a0552449e3a22f2027d7f37c38): \n\b')"
    yarn
}