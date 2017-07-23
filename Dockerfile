FROM vborja/asdf-alpine:latest

ADD haskell .asdf/toolset/haskell/

USER root
RUN  bash .asdf/toolset/haskell/build-deps
USER asdf
RUN  asdf-install-toolset haskell

