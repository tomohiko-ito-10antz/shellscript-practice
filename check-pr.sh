HEAD_BRANCHES=$(gh pr list \
    --repo tomohiko-ito-10antz/shellscript-practice \
    --json 'headRefName' \
    --jq '.[].headRefName')

for HEAD_BRANCH in ${HEAD_BRANCHES}; do
    echo "head: ${HEAD_BRANCH}"
done


