#!/bin/bash
# GraphQL-based GitHub Projects V2 Creation
# This script creates all 10 projects using GitHub's GraphQL API

set -e

GITHUB_TOKEN="${GITHUB_TOKEN:-$(gh auth token)}"
OWNER_ID="GlacierEQ"

echo "🚀 Creating 10 GitHub Projects using GraphQL API..."
echo "=========================================================="
echo ""

# Get owner node ID
OWNER_NODE_ID=$(gh api graphql -f query='
  query {
    user(login: "GlacierEQ") {
      id
    }
  }
' --jq '.data.user.id')

echo "Owner Node ID: $OWNER_NODE_ID"
echo ""

# Project 1: Legal Warfare Command Center
echo "Creating Project 1: ⚖️ Legal Warfare Command Center"
PROJECT_1=$(gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "⚖️ Legal Warfare Command Center"
    }) {
      projectV2 {
        id
        title
        url
      }
    }
  }
' --jq '.data.createProjectV2.projectV2')

echo "Created: $(echo $PROJECT_1 | jq -r '.title')"
echo "URL: $(echo $PROJECT_1 | jq -r '.url')"
echo ""

# Project 2: MCP Constellation Core
echo "Creating Project 2: 🌐 MCP Constellation Core"
PROJECT_2=$(gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🌐 MCP Constellation Core"
    }) {
      projectV2 {
        id
        title
        url
      }
    }
  }
' --jq '.data.createProjectV2.projectV2')

echo "Created: $(echo $PROJECT_2 | jq -r '.title')"
echo ""

# Project 3: Aspen Grove Intelligence Matrix
echo "Creating Project 3: 🌲 Aspen Grove Intelligence Matrix"
PROJECT_3=$(gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🌲 Aspen Grove Intelligence Matrix"
    }) {
      projectV2 {
        id
        title
        url
      }
    }
  }
' --jq '.data.createProjectV2.projectV2')

echo "Created: $(echo $PROJECT_3 | jq -r '.title')"
echo ""

# Project 4: Memory Ecosystem Unification
echo "Creating Project 4: 🧠 Memory Ecosystem Unification"
PROJECT_4=$(gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🧠 Memory Ecosystem Unification"
    }) {
      projectV2 {
        id
        title
        url
      }
    }
  }
' --jq '.data.createProjectV2.projectV2')

echo "Created: $(echo $PROJECT_4 | jq -r '.title')"
echo ""

# Project 5: Federal Forensic Arsenal
echo "Creating Project 5: 🔐 Federal Forensic Arsenal"
PROJECT_5=$(gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🔐 Federal Forensic Arsenal"
    }) {
      projectV2 {
        id
        title
        url
      }
    }
  }
' --jq '.data.createProjectV2.projectV2')

echo "Created: $(echo $PROJECT_5 | jq -r '.title')"
echo ""

# Project 6: AI Automation Nexus
echo "Creating Project 6: 🤖 AI Automation Nexus"
PROJECT_6=$(gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🤖 AI Automation Nexus"
    }) {
      projectV2 {
        id
        title
        url
      }
    }
  }
' --jq '.data.createProjectV2.projectV2')

echo "Created: $(echo $PROJECT_6 | jq -r '.title')"
echo ""

# Project 7: Document Intelligence Suite
echo "Creating Project 7: 📄 Document Intelligence Suite"
PROJECT_7=$(gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "📄 Document Intelligence Suite"
    }) {
      projectV2 {
        id
        title
        url
      }
    }
  }
' --jq '.data.createProjectV2.projectV2')

echo "Created: $(echo $PROJECT_7 | jq -r '.title')"
echo ""

# Project 8: Browser Warfare Engine
echo "Creating Project 8: 🌐 Browser Warfare Engine"
PROJECT_8=$(gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🌐 Browser Warfare Engine"
    }) {
      projectV2 {
        id
        title
        url
      }
    }
  }
' --jq '.data.createProjectV2.projectV2')

echo "Created: $(echo $PROJECT_8 | jq -r '.title')"
echo ""

# Project 9: Development Command Center
echo "Creating Project 9: ⚡ Development Command Center"
PROJECT_9=$(gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "⚡ Development Command Center"
    }) {
      projectV2 {
        id
        title
        url
      }
    }
  }
' --jq '.data.createProjectV2.projectV2')

echo "Created: $(echo $PROJECT_9 | jq -r '.title')"
echo ""

# Project 10: Specialized Intelligence Tools
echo "Creating Project 10: 🔧 Specialized Intelligence Tools"
PROJECT_10=$(gh api graphql -f query='
  mutation {
    createProjectV2(input: {
      ownerId: "'$OWNER_NODE_ID'"
      title: "🔧 Specialized Intelligence Tools"
    }) {
      projectV2 {
        id
        title
        url
      }
    }
  }
' --jq '.data.createProjectV2.projectV2')

echo "Created: $(echo $PROJECT_10 | jq -r '.title')"
echo ""

echo "=========================================================="
echo "✅ ALL 10 PROJECTS CREATED SUCCESSFULLY!"
echo "=========================================================="
echo ""
echo "View your projects at: https://github.com/GlacierEQ?tab=projects"
echo ""
echo "Next steps:"
echo "1. Run ./scripts/assign-repos-to-projects.sh to add repositories"
echo "2. Deploy GitHub Actions workflows"
echo "3. Activate memory constellation sync"
echo ""
