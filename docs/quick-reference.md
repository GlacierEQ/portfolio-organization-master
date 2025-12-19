# 📌 Quick Reference Guide

## 🚀 Fast Commands

### Create All 10 Projects
```bash
cd portfolio-organization-master
chmod +x scripts/graphql-create-projects.sh
./scripts/graphql-create-projects.sh
```

### Check Project Status
```bash
gh api graphql -f query='{
  user(login: "GlacierEQ") {
    projectsV2(first: 20) {
      nodes { title url }
      totalCount
    }
  }
}'
```

### Run Full Deployment
```bash
./scripts/deploy-all.sh
```

---

## 📋 10 Projects at a Glance

| # | Emoji | Name | Repos | Focus |
|---|-------|------|-------|-------|
| 1 | ⚖️ | Legal Warfare Command Center | 12 | Court automation + litigation |
| 2 | 🌐 | MCP Constellation Core | 13 | 25+ API connectors |
| 3 | 🌲 | Aspen Grove Intelligence | 6 | 400K agents + 703.5MB memory |
| 4 | 🧠 | Memory Ecosystem | 6 | Neo4j + SuperMemory + Mem0 |
| 5 | 🔐 | Federal Forensic Arsenal | 10 | Evidence + chain-of-custody |
| 6 | 🤖 | AI Automation Nexus | 10 | 762-repo authority |
| 7 | 📄 | Document Intelligence | 9 | WhisperX + AI documents |
| 8 | 🌐 | Browser Warfare | 5 | Selenium + Playwright |
| 9 | ⚡ | Development Command | 6 | Operator packs + deployment |
| 10 | 🔧 | Specialized Tools | 6 | Voice AI + performance |

**Total:** 83 repos categorized | 679 remaining

---

## 🔗 Key URLs

- **Projects Dashboard:** https://github.com/GlacierEQ?tab=projects
- **This Repo:** https://github.com/GlacierEQ/portfolio-organization-master
- **Actions:** https://github.com/GlacierEQ/portfolio-organization-master/actions
- **Issues:** https://github.com/GlacierEQ/portfolio-organization-master/issues

---

## 🛠️ Files Reference

### Scripts
- `scripts/graphql-create-projects.sh` - Create all 10 projects
- `scripts/deploy-all.sh` - Master deployment

### Documentation  
- `docs/dependency-graph.md` - Complete Mermaid visualization
- `docs/quick-reference.md` - This file
- `DEPLOYMENT-STATUS.md` - Current deployment status

### Configuration
- `config/projects.json` - All 10 project specifications
- `config/labels.json` - Complete label taxonomy

### Workflows
- `.github/workflows/create-projects.yml` - Project creation
- `.github/workflows/cross-project-sync.yml` - Auto-sync every 6h
- `.github/workflows/bulk-repo-ops.yml` - Bulk operations

---

## ⚡ Common Tasks

### Task: Create Projects
```bash
# GitHub Actions (easiest)
gh workflow run create-projects.yml -f confirm=YES

# OR command line
./scripts/graphql-create-projects.sh
```

### Task: View All Repos
```bash
gh repo list GlacierEQ --limit 1000
```

### Task: Check Repo Count
```bash
gh repo list GlacierEQ --limit 1000 | wc -l
```

### Task: Run Bulk Operation
```bash
gh workflow run bulk-repo-ops.yml \
  -f operation=update-readme \
  -f target_project=all
```

---

## 📊 Status Indicators

- ✅ Complete and verified
- 🟢 Operational  
- 🟡 Ready to deploy
- 🟠 In progress
- 🔴 Not started
- ⚠️ Requires attention

---

## 🎯 Success Metrics

**Portfolio Organization:**
- Total repos: 762
- Projects: 10
- Categorized: 83 (11%)
- Target: 100%

**Automation:**
- Scripts: 100% ready
- Workflows: 100% configured
- Memory sync: Awaiting projects
- MCP deployment: Awaiting projects

---

**Last Updated:** 2025-12-19 04:30 AM HST
