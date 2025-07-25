#!/bin/bash
# GitHub 스타일 CSS 다운로드
wget -O github-markdown.css https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/5.2.0/github-markdown.min.css

# Mermaid 지원 HTML 템플릿으로 변환
pandoc -f markdown -t html --standalone \
  --template=template.html \
  --css=style.css \
  --metadata title="제조 DX 통합 자동화 시스템 - 김동규 포트폴리오" \
  -o index.html README.md

echo "✅ HTML 변환 완료! Mermaid 다이어그램이 포함된 index.html 파일이 생성되었습니다."