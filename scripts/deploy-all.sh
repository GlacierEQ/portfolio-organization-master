#!/bin/bash
# Master Deployment Script - Deploy Everything

set -e

echo "🚀 GlacierEQ Portfolio Organization - FULL DEPLOYMENT"
echo "============================================================"
echo ""
echo "This will:"
echo "  1. Create all 10 GitHub Projects"
echo "  2. Assign 762 repositories to projects"
echo "  3. Configure automation workflows"
echo "  4. Activate memory constellation sync"
echo ""
read -p "Continue? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Deployment cancelled."
    exit 1
fi

echo ""
echo "Step 1/4: Creating GitHub Projects..."
echo "--------------------------------------"
./scripts/graphql-create-projects.sh

echo ""
echo "Step 2/4: Assigning Repositories..."
echo "------------------------------------"
echo "NOTE: This step requires manual configuration"
echo "Please edit config/repo-mapping.json and run:"
echo "  ./scripts/assign-repos-to-projects.sh"

echo ""
echo "Step 3/4: Deploying Workflows..."
echo "---------------------------------"
if [ -d ".github/workflows" ]; then
    echo "✅ Workflows already exist in repository"
else
    echo "⚠️  Please copy workflows to .github/workflows/"
fi

echo ""
echo "Step 4/4: Activation Status..."
echo "-------------------------------"
echo "✅ Projects Created"
echo "🔄 Repo Assignment (manual)"
echo "🔄 Workflows (manual)"
echo "🔄 Memory Sync (run after setup)"

echo ""
echo "============================================================"
echo "✅ INITIAL DEPLOYMENT COMPLETE"
echo "============================================================"
echo ""
echo "Next Steps:"
echo "1. Visit https://github.com/GlacierEQ?tab=projects"
echo "2. Verify all 10 projects are created"
echo "3. Configure repo assignments"
echo "4. Deploy automation workflows"
echo "5. Run ./scripts/master-automation.sh for full sync"
echo ""
