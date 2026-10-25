FROM parrotsec/core
ENV TERM=xterm-256color
COPY ./mod/bashrc /root/.bashrc
COPY ./mod/vim /root/.vim
COPY ./mod/vimrc /root/.vimrc

RUN apt update && apt full-upgrade -y && apt install curl -y
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN wget -q \
    https://packages.microsoft.com/config/debian/13/packages-microsoft-prod.deb \
    && apt install ./packages-microsoft-prod.deb && apt update

RUN apt install -y nmap nasm ruby python3 python3-pip-whl npm \
    build-essential 7zip git sqlite3 openssh-client zsh nodejs \
    clang jq cargo dnsutils ncat wget powershell

RUN curl -fsSL https://opencode.ai/v2/install | bash && \
    echo "export PATH=/root/.opencode/bin:$PATH" >> /root/.bashrc

CMD ["/usr/bin/bash"]
