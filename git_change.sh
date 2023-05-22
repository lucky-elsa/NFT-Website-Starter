git filter-branch --commit-filter '
        if [ "$GIT_COMMITTER_NAME" = "CodeBucks" ];
        then
                GIT_COMMITTER_NAME="beautylotus";
                GIT_AUTHOR_NAME="deautylotus";
                GIT_COMMITTER_EMAIL="deautylotus718@gmail.com";
                GIT_AUTHOR_EMAIL="deautylotus718@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD