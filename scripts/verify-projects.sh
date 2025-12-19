#!/bin/bash
# 🔍 Verify All Projects Were Created Successfully

set -e

echo "🔍 VERIFYING PROJECT CREATION"
echo "=========================================================="
echo ""

echo "Fetching all GitHub Projects for GlacierEQ..."
echo ""

PROJECTS=$(gh api graphql -f query='
  query {
    user(login: "GlacierEQ") {
      projectsV2(first: 20) {
        totalCount
        nodes {
          title
          url
          createdAt
        }
      }
    }
  }
' --jq '.data.user.projectsV2')

TOTAL=$(echo "$PROJECTS" | jq -r '.totalCount')

echo "📊 Total Projects Found: $TOTAL"
echo ""

if [ "$TOTAL" -ge 15 ]; then
    echo "✅ SUCCESS! All 15 projects detected."
    echo ""
    echo "📋 Project List:"
    echo "$PROJECTS" | jq -r '.nodes[] | "  - \(.title)"'
    echo ""
    echo "🌐 View at: https://github.com/GlacierEQ?tab=projects"
else
    echo "⚠️ WARNING: Expected 15 projects, found $TOTAL"
    echo ""
    echo "📋 Found Projects:"
    echo "$PROJECTS" | jq -r '.nodes[] | "  - \(.title)"'
    echo ""
    echo "❌ Some projects may have failed to create."
    echo "   Try running create-15-projects.sh again."
fi

echo ""
echo "=========================================================="
echo "Verification complete"
echo ""
