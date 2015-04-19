_git_update ()
{
    if git rev-parse --verify --quiet HEAD >/dev/null; then
        __git_complete_index_file "--committable"
    else
        # This is the first commit
        __git_complete_index_file "--cached"
    fi
}
