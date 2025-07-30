# Ira Chartarum Landing Page

A strategic landing page for the complex card game Ira Chartarum, built with Jekyll and optimized for GitHub Pages.

## 🎯 Project Overview

This landing page showcases the strategic depth and complexity of Ira Chartarum, targeting core strategy game enthusiasts. The site emphasizes the game's six interconnected card systems and unique mechanics that create deep tactical gameplay.

## 🚀 Quick Start

### GitHub Pages Deployment

1. **Push to GitHub**:
   ```bash
   git add .
   git commit -m "Initial Ira Chartarum landing page"
   git push origin main
   ```

2. **Enable GitHub Pages**:
   - Go to repository Settings > Pages
   - Source: Deploy from a branch
   - Branch: main / (root)
   - Save

3. **Custom Domain Setup**:
   - Add `www.ira-chartarum.com` in the Custom domain field
   - Configure DNS CNAME record: `www.ira-chartarum.com` → `username.github.io`

### Local Development (Optional)

If you have Ruby/Jekyll installed:
```bash
bundle install
bundle exec jekyll serve
```

## 📁 Project Structure

```
/
├── _config.yml              # Jekyll configuration
├── _layouts/
│   └── default.html         # Main HTML template
├── assets/
│   ├── css/
│   │   └── main.css         # Complete design system
│   └── images/              # Game assets and artwork
├── memory-bank/             # Project documentation and planning
├── requirements/            # Requirements gathering documentation
├── scripts/
│   └── optimize-images.ps1  # Image optimization helper
└── index.html               # Main landing page
```

## 🎨 Design System

### Color Palette
- **Fire Accent**: #e55a2b (primary CTAs, titles)
- **Frost Accent**: #4a90e2 (secondary elements, tech highlights)
- **Dark Sections**: Hero and asset gallery
- **Light Sections**: Content and mechanics showcase

### Typography
- **Headings**: Bold weights emphasizing strategic complexity
- **Body**: Readable sizes with responsive scaling
- **Emphasis**: Strategic use of color for game terminology

### Layout Strategy
- **Hero Section**: Full-screen with game background
- **Mechanics Showcase**: Grid layout with hover effects
- **Asset Gallery**: Visual focus on game artwork
- **Mobile-First**: Responsive design for all devices

## 🎮 Content Strategy

### Target Audience
Core strategy game enthusiasts who appreciate:
- Complex mechanics and deep systems
- Strategic decision-making
- Tabletop/card game hybrids
- Competitive gameplay

### Key Messages
1. **Strategic Complexity**: "Six interconnected card systems"
2. **Unique Mechanics**: Fuse system, hidden information, dynamic terrain
3. **Depth Focus**: "Every decision creates ripple effects"
4. **Community**: Discord and download access

## 🛠️ Technical Features

- **Jekyll Static Site**: GitHub Pages native
- **Performance Optimized**: WebP images with JPG fallbacks
- **SEO Ready**: Meta tags, semantic HTML
- **Responsive Design**: Mobile-first approach
- **Accessibility**: Semantic markup and ARIA labels
- **Fast Loading**: Minimal dependencies, optimized CSS

## 📊 Analytics & Performance

- **No External Analytics**: Privacy-focused approach
- **Core Web Vitals Optimized**: Fast loading, minimal layout shift
- **Image Optimization**: Progressive loading with picture elements
- **CSS Grid/Flexbox**: Modern layout techniques

## ⚙️ Maintenance

### Adding New Assets
1. Add images to `/assets/images/`
2. Update gallery section in `index.html`
3. Run image optimization script if needed

### Content Updates
- Edit `index.html` for content changes
- Update `_config.yml` for site-wide settings
- Modify `/assets/css/main.css` for styling changes

## 🚦 Deployment Checklist

- [ ] Repository pushed to GitHub
- [ ] GitHub Pages enabled
- [ ] Custom domain configured
- [ ] DNS records updated
- [ ] SSL certificate active
- [ ] All images loading correctly
- [ ] Mobile responsiveness tested
- [ ] Download/Discord links verified

## 📝 Documentation

Complete project documentation available in `/memory-bank/`:
- Requirements gathering process
- Creative design decisions
- Implementation planning
- Build logs and technical decisions

---

**Live Site**: [www.ira-chartarum.com](http://www.ira-chartarum.com) (after deployment)  
**Discord**: [Join Community](https://discord.gg/Ywz5UYpf)  
**Download**: [Game Client](http://downloads.ira-chartarum.com/IraUpdater.zip)
