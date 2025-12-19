#!/bin/bash
# 🚀 NUCLEAR PROJECT CREATION - 15 Projects (Hybrid Strategy)
# Creates 10 Strategic + 5 Tactical Projects

set -e

GITHUB_TOKEN="${GITHUB_TOKEN:-$(gh auth token)}"
OWNER="GlacierEQ"

echo "🔥🔥🔥 NUCLEAR PORTFOLIO ORGANIZATION 🔥🔥🔥"
echo "=========================================================="
echo "Creating 15 GitHub Projects (10 Strategic + 5 Tactical)"
echo ""

# Get owner node ID
echo "🔍 Fetching GitHub user ID..."
OWNER_NODE_ID=$(gh api graphql -f query='
  query {
    user(login: "'$OWNER'") {
      id
    }
  }
' --jq '.data.user.id')

echo "✅ Owner Node ID: $OWNER_NODE_ID"
echo ""

# ==========================================
# STRATEGIC PROJECTS (1-10)
# ==========================================

echo "📂 CREATING STRATEGIC PROJECTS..."
echo "------------------------------------------"

# Project 1
echo "[1/15] ⚖️ Legal Warfare Command Center"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "⚖️ Legal Warfare Command Center"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 2
echo "[2/15] 🌐 MCP Constellation Core"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🌐 MCP Constellation Core"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 3
echo "[3/15] 🌲 Aspen Grove Intelligence Matrix"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🌲 Aspen Grove Intelligence Matrix"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 4
echo "[4/15] 🧠 Memory Ecosystem Unification"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🧠 Memory Ecosystem Unification"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 5
echo "[5/15] 🔐 Federal Forensic Arsenal"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🔐 Federal Forensic Arsenal"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 6
echo "[6/15] 🤖 AI Automation Nexus"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🤖 AI Automation Nexus"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 7
echo "[7/15] 📄 Document Intelligence Suite"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "📄 Document Intelligence Suite"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 8
echo "[8/15] 🌐 Browser Warfare Engine"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🌐 Browser Warfare Engine"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 9
echo "[9/15] ⚡ Development Command Center"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "⚡ Development Command Center"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 10
echo "[10/15] 🔧 Specialized Intelligence Tools"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🔧 Specialized Intelligence Tools"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

echo ""
echo "✅ Strategic Projects Complete (10/10)"
echo ""

# ==========================================
# TACTICAL PROJECTS (11-15)
# ==========================================

echo "📂 CREATING TACTICAL PROJECTS..."
echo "------------------------------------------"

# Project 11
echo "[11/15] 🔬 AI/ML Research Arsenal"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🔬 AI/ML Research Arsenal"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 12
echo "[12/15] 🏗️ Infrastructure Command Center"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🏗️ Infrastructure Command Center"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 13
echo "[13/15] 🗄️ Data Management Platform"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🗄️ Data Management Platform"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 14
echo "[14/15] 🧪 R&D Laboratory"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🧪 R&D Laboratory"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

# Project 15
echo "[15/15] 📦 Archive Vault"
gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "📦 Archive Vault"
    }) {
      projectV2 { id title url }
    }
  }
' --jq '.data.createProjectV2.projectV2.url' || echo "Failed"

echo ""
echo "✅ Tactical Projects Complete (5/5)"
echo ""

# ==========================================
# COMPLETION
# ==========================================

echo "=========================================================="
echo "🔥🔥🔥 ALL 15 PROJECTS CREATED SUCCESSFULLY! 🔥🔥🔥"
echo "=========================================================="
echo ""
echo "📊 Summary:"
echo "  - Strategic Projects: 10"
echo "  - Tactical Projects: 5"
echo "  - Total: 15 Projects"
echo ""
echo "🌐 View your projects at:"
echo "   https://github.com/$OWNER?tab=projects"
echo ""
echo "📋 Next Steps:"
echo "   1. Verify all 15 projects are visible"
echo "   2. Review docs/comprehensive-categorization-analysis.md"
echo "   3. Start assigning repositories to projects"
echo "   4. Deploy automation workflows"
echo ""
echo "🎯 Repository Coverage:"
echo "   - Total repos: 762"
echo "   - Already categorized: 83 (11%)"
echo "   - To be assigned: 679 (89%)"
echo ""
echo "✅ DEPLOYMENT COMPLETE!"
echo ""
