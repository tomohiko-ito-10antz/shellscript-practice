HEAD_BRANCHES=$(gh pr list \
    --repo tomohiko-ito-10antz/shellscript-practice \
    --json 'headRefName' \
    --jq '.[].headRefName')

for HEAD_BRANCH in ${HEAD_BRANCHES}; do
    case "${HEAD_BRANCH}" in
    dev*)
        echo "NG: ${HEAD_BRANCH}: devをマージ元とするプルリクエストは作成しないでください"
        ;;
    *)
        ;;
    esac
done


