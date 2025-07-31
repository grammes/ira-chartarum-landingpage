# Technical Context - Ira Chartarum Landing Page

## Stack Overview
- **Static Site Generator**: Jekyll 4.3
- **Ruby Version**: 3.4
- **Hosting**: GitHub Pages with custom domain (planned)
- **Base Theme**: Minima (Jekyll default)
- **Processing**: SCSS compilation with Jekyll liquid syntax
- **Build**: GitHub Actions workflow

## Key Configurations

### Jekyll Configuration (`_config.yml`)
```yaml
title: Ira Chartarum
description: A digital trading card game
baseurl: "/ira-chartarum-landingpage"
url: "https://michstmb.github.io"
theme: minima
plugins:
  - jekyll-feed
  - jekyll-seo-tag
```

### Dependencies (`Gemfile`)
```ruby
source "https://rubygems.org"
ruby "3.4.0"

gem "jekyll", "~> 4.3.0"
gem "minima", "~> 2.5"
gem "jekyll-feed", "~> 0.12"
gem "jekyll-seo-tag"
gem "webrick", "~> 1.7"  # Required for Ruby 3.x

platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]
```

## Asset Management

### Image Assets
- **Format**: WebP for optimal compression and modern browsers
- **Location**: `assets/images/`
- **Naming**: Descriptive, matching game components
- **Processing**: Jekyll relative_url filter for proper GitHub Pages paths

### Style Processing
- **Format**: SCSS (`assets/css/main.scss`) with Jekyll front matter
- **Features**: Liquid syntax support for dynamic asset paths
- **Base**: Minima theme with custom overrides
- **Critical**: All asset references use `{{ '/path' | relative_url }}`

## GitHub Pages Configuration

### Deployment Process
- **Workflow**: `.github/workflows/jekyll.yml`
- **Trigger**: Push to main branch
- **Build**: Jekyll with bundler dependency caching
- **Deploy**: GitHub Pages with proper baseurl handling

### URL Structure
- **Production**: `https://michstmb.github.io/ira-chartarum-landingpage/`
- **Assets**: Relative URLs resolve correctly with baseurl
- **Custom Domain**: Planned for future implementation

## Performance Considerations
- **Images**: WebP format reduces file sizes significantly
- **CSS**: SCSS compilation with Jekyll optimization
- **Caching**: GitHub Pages CDN with proper headers
- **Loading**: Strategic asset organization and minimal dependencies

## Critical Technical Lessons
1. **Asset Paths**: All images and CSS must use Jekyll's `relative_url` filter when using a baseurl
2. **SCSS Processing**: Converting CSS to SCSS enables Jekyll liquid syntax for dynamic paths
3. **Ruby Compatibility**: Ruby 3.x requires webrick gem for local development
4. **GitHub Actions**: Jekyll-specific workflow required for proper build and deployment
