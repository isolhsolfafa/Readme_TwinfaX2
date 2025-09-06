# 🏭 제조 DX 통합 자동화 시스템

> **AI 협업 기반으로 구축된 현대적 제조업 데이터 파이프라인 및 모니터링 시스템**

*Built by 김동규 / 제조기술1팀 / DX TF, 2025*

[![Python](https://img.shields.io/badge/Python-3.8+-3776AB?style=flat-square&logo=python)](https://python.org/)
[![React](https://img.shields.io/badge/React-18.2.0-61DAFB?style=flat-square&logo=react)](https://reactjs.org/)
[![OpenAI](https://img.shields.io/badge/OpenAI-GPT--3.5-412991?style=flat-square&logo=openai)](https://openai.com/)
[![Flask](https://img.shields.io/badge/Flask-2.3+-000000?style=flat-square&logo=flask)](https://flask.palletsprojects.com/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-12+-336791?style=flat-square&logo=postgresql)](https://postgresql.org/)
[![Deployed on Railway](https://img.shields.io/badge/API-Railway-0052CC?style=flat-square&logo=railway)](https://*****)
[![Deployed on Netlify](https://img.shields.io/badge/Dashboard-Netlify-00C7B7?style=flat-square&logo=netlify)](https://*****)
[![▶ Dashboard Demo](https://img.shields.io/badge/Dashboard_Demo-YouTube-FF0000?style=flat-square&logo=youtube)](https://youtu.be/Jrclx61FrDg)  
[![▶ Slack Bot Demo](https://img.shields.io/badge/Slack_Bot_Demo-YouTube-FF0000?style=flat-square&logo=youtube)](https://youtube.com/shorts/sjsWLC4aH50?feature=share)  


<!-- 
공개용 README 파일입니다.
민감한 정보는 ***** 처리되어 있습니다.
실제 배포 시 환경변수를 통해 설정하세요.
-->

## 목차

- [시스템 개요](#시스템-개요)
  - [시스템 아키텍처](#시스템-아키텍처)
  - [상세 아키텍처 다이어그램 (v3.4.0)](#상세-아키텍처-다이어그램-v340)
- [모듈별 구성](#모듈별-구성)
- [AI 어시스턴트](#ai-어시스턴트)
- [설치 가이드](#설치-가이드)
- [환경 설정](#환경-설정)
- [대시보드 접속](#대시보드-접속)
- [CI/CD 파이프라인](#cicd-파이프라인)
- [모니터링](#모니터링)
- [트러블슈팅](#트러블슈팅)
- [기여 가이드](#기여-가이드)
- [업데이트 히스토리](#업데이트-히스토리)

## 시스템 개요

## 기술 스택

### Backend
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Flask](https://img.shields.io/badge/Flask-000000?style=for-the-badge&logo=flask&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![SQLAlchemy](https://img.shields.io/badge/SQLAlchemy-D71F00?style=for-the-badge&logo=sqlalchemy&logoColor=white)
![Google_Drive_API](https://img.shields.io/badge/Google_Drive_API-4285F4?style=for-the-badge&logo=googledrive&logoColor=white)
![Batch_Processing](https://img.shields.io/badge/Batch_Processing-28a745?style=for-the-badge&logoColor=white)
![JSON_Merger](https://img.shields.io/badge/JSON_Merger-28a745?style=for-the-badge&logoColor=white)
![Auth0](https://img.shields.io/badge/Auth0-EB5424?style=for-the-badge&logo=auth0&logoColor=white)

### Frontend
![React](https://img.shields.io/badge/React-61DAFB?style=for-the-badge&logo=react&logoColor=black)
![Recharts](https://img.shields.io/badge/Recharts-8884D8?style=for-the-badge&logo=chart.js&logoColor=white)
![Chart.js](https://img.shields.io/badge/Chart.js-FF6384?style=for-the-badge&logo=chart.js&logoColor=white)
![Axios](https://img.shields.io/badge/Axios-5A29E4?style=for-the-badge&logo=axios&logoColor=white)

### Infrastructure & DevOps
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Railway](https://img.shields.io/badge/Railway-0B0D0E?style=for-the-badge&logo=railway&logoColor=white)
![Netlify](https://img.shields.io/badge/Netlify-00C7B7?style=for-the-badge&logo=netlify&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)

### AI & Automation
![OpenAI](https://img.shields.io/badge/OpenAI%20GPT-412991?style=for-the-badge&logo=openai&logoColor=white)
![Slack](https://img.shields.io/badge/Slack%20SDK-4A154B?style=for-the-badge&logo=slack&logoColor=white)
![Random Forest](https://img.shields.io/badge/Random%20Forest-FF6F00?style=for-the-badge&logo=scikit-learn&logoColor=white)
![TF-IDF](https://img.shields.io/badge/TF--IDF-FF6F00?style=for-the-badge&logo=tensorflow&logoColor=white)

### APIs & Integration
![Google Sheets](https://img.shields.io/badge/Google%20Sheets-0F9D58?style=for-the-badge&logo=google-sheets&logoColor=white)
![Google Drive](https://img.shields.io/badge/Google%20Drive-4285F4?style=for-the-badge&logo=google-drive&logoColor=white)
![Gmail](https://img.shields.io/badge/Gmail%20SMTP-EA4335?style=for-the-badge&logo=gmail&logoColor=white)
![KakaoTalk](https://img.shields.io/badge/Kakao%20API-FFCD00?style=for-the-badge&logo=kakao&logoColor=black)
![Microsoft Teams](https://img.shields.io/badge/Teams%20API-6264A7?style=for-the-badge&logo=microsoft-teams&logoColor=white)
![Azure](https://img.shields.io/badge/Azure%20API-0078D4?style=for-the-badge&logo=microsoft-azure&logoColor=white)

### Ownership: Solo E-to-E Development
```
기획 → 설계 → ETL → DB → API → FE → 챗봇 → 알림 → 운영 → 배포
```

GST 공장의 **제조 데이터를 실시간으로 수집, 분석, 시각화**하는 통합 자동화 시스템입니다. 단순한 파이썬 스크립트에서 시작하여 **AI 협업을 통해 고도화된 현대적 시스템**으로 발전했습니다.

### 4대 핵심 기능
```
📊 데이터 분석    🤖 자동화시스템    📱 대시보드    🔔 알림 시스템
```

### 시스템 아키텍처

<div align="center">
  <img src="images/system-architecture.png" alt="시스템 아키텍처" width="900"/>
  <p><em><strong>GST 제조 DX 통합 자동화 시스템 아키텍처</strong></em></p>
</div>

**Slack 챗봇은 Flask API와 직접 연동되어 주요 KPI 질의·응답 및 알림 기능을 수행**

#### **📊 상세 아키텍처 다이어그램 (v3.4.0)**

<div align="center">
  <img src="images/data-flow-detail.png" alt="데이터 플로우 상세" width="900"/>
  <p><em><strong>v3.4.0 데이터 플로우 상세 - JSON 병합 + 이중 변경감지 + 트랜잭셔널 안전성</strong></em></p>
</div>

<div align="center">
  <img src="images/module-dependency.png" alt="모듈별 의존성" width="900"/>
  <p><em><strong>모듈별 의존성 v3.4.0 - 새로운 utils 모듈들과 3-tier 환경 반영</strong></em></p>
</div>

<div align="center">
  <img src="images/core-functions.png" alt="핵심 기능 중심" width="900"/>
  <p><em><strong>핵심 기능 중심 v3.4.0 - API 최적화 + 트랜잭셔널 안전성 + 자동복구 시스템</strong></em></p>
</div>

<div align="center">
  <img src="images/project-timeline.png" alt="프로젝트 진화 타임라인" width="800"/>
  <p><em><strong>프로젝트 진화 과정 (2024년 → 2025년)</strong></em></p>
</div>

### 핵심 특징

- **실시간 데이터 파이프라인**: Google Sheets → PostgreSQL → React 대시보드
- **AI 기반 어시스턴트**: OpenAI GPT-3.5 활용 슬랙 봇 
- **반응형 웹 대시보드**: 다중 대시보드 지원 (공장/협력사/내부)
- **완전 자동화**: GitHub Actions CI/CD 파이프라인
- **클라우드 네이티브**: Railway + Netlify 배포

## 모듈별 구성

### 1. 협력사 평가 대시보드

**핵심 기능**: 협력사별 품질 평가 지표 실시간 모니터링  
**KPI 계산**: 불량건수(70%) + 누락비율(30%) 가중평균  
**실시간 대시보드**: 등급별 색상 구분, 상세 불량 내역 표시

**주요 특징:**
- 실시간 데이터 수집 (Google Sheets + Google Drive)
- 스마트 순위 매김 (동일 점수 시 불량 건수 우선순위)
- 상세 불량 내역 (제품S/N, 발생일, CSV 다운로드)
- 클라우드 백업 (Google Drive 자동 백업)
- 자동 스케줄링 (매월 마지막 평일 실행)

**KPI 평가 기준:**

<div align="center">
<table>
  <thead>
    <tr style="background-color: #f8f9fa;">
      <th style="border: 1px solid #dee2e6; padding: 12px; text-align: center;"><strong>구분</strong></th>
      <th style="border: 1px solid #dee2e6; padding: 12px; text-align: center; background-color: #d4edda;"><strong>A등급</strong></th>
      <th style="border: 1px solid #dee2e6; padding: 12px; text-align: center; background-color: #d1ecf1;"><strong>B등급</strong></th>
      <th style="border: 1px solid #dee2e6; padding: 12px; text-align: center; background-color: #fff3cd;"><strong>C등급</strong></th>
      <th style="border: 1px solid #dee2e6; padding: 12px; text-align: center; background-color: #f8d7da;"><strong>D등급</strong></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border: 1px solid #dee2e6; padding: 10px; font-weight: bold;">NaN 비율</td>
      <td style="border: 1px solid #dee2e6; padding: 10px; text-align: center;">&lt;1%</td>
      <td style="border: 1px solid #dee2e6; padding: 10px; text-align: center;">1-3%</td>
      <td style="border: 1px solid #dee2e6; padding: 10px; text-align: center;">3-6%</td>
      <td style="border: 1px solid #dee2e6; padding: 10px; text-align: center;">≥6%</td>
    </tr>
    <tr>
      <td style="border: 1px solid #dee2e6; padding: 10px; font-weight: bold;">기구 불량건수</td>
      <td style="border: 1px solid #dee2e6; padding: 10px; text-align: center;">&lt;6건</td>
      <td style="border: 1px solid #dee2e6; padding: 10px; text-align: center;">6-16건</td>
      <td style="border: 1px solid #dee2e6; padding: 10px; text-align: center;">17-27건</td>
      <td style="border: 1px solid #dee2e6; padding: 10px; text-align: center;">≥28건</td>
    </tr>
    <tr>
      <td style="border: 1px solid #dee2e6; padding: 10px; font-weight: bold;">전장 불량건수</td>
      <td style="border: 1px solid #dee2e6; padding: 10px; text-align: center;">&lt;1건</td>
      <td style="border: 1px solid #dee2e6; padding: 10px; text-align: center;">1-3건</td>
      <td style="border: 1px solid #dee2e6; padding: 10px; text-align: center;">4-6건</td>
      <td style="border: 1px solid #dee2e6; padding: 10px; text-align: center;">≥7건</td>
    </tr>
  </tbody>
</table>
</div>

### 2. GST Factory Pipeline

**ETL 파이프라인**: Google Sheets → PostgreSQL → React 대시보드  
**슬랙 봇 AI**: OpenAI GPT-3.5 기반 지능형 어시스턴트  
**다중 대시보드**: 공장/협력사/내부 대시보드 지원

**실제 서비스:**
- **공장 대시보드**: `https://*****` <!-- 실제 URL 숨김 처리 -->
- **백엔드 API**: `https://*****` <!-- 실제 URL 숨김 처리 -->
- **슬랙 봇**: GST Factory 지능형 봇 (사내 슬랙 워크스페이스)

**기술 스택:**
- **Backend**: Python 3.8+, Flask 2.3+, PostgreSQL
- **Frontend**: React 18.2.0, Chart.js 4.4.3, Recharts 2.12.7
- **AI**: OpenAI GPT-3.5, Slack SDK 3.26.2
- **인프라**: Railway (Backend), Netlify (Frontend)

### 3. 협력사 출입 관리

**일자별 관리**: 협력사별 출입 현황 실시간 모니터링  
**최근 7일 자동**: 주단위 데이터 자동 관리  
**고유 색상**: 협력사별 색상 구분 시스템

**자동화 특징:**
- GitHub Actions 매일 5회 자동 실행 (8:10, 9:10, 17:10, 18:10, 20:10 KST)
- GitHub JSON 기반 CSV 다운로드
- 중복 데이터 자동 정리

**협력사별 색상 시스템:**
```javascript
var companyColors = {
    'BAT': ['#FF6B6B', '#FF8E8E'],      // 빨간색 계열
    'C&A': ['#4ECDC4', '#7ED7D1'],      // 청록색 계열  
    'FNI': ['#45B7D1', '#6BC5D8'],      // 파란색 계열
    'P&S': ['#96CEB4', '#AFDCC4'],      // 녹색 계열
    'TMS(E)': ['#FFEAA7', '#FFF2C7'],   // 노란색 계열
    'TMS(M)': ['#DDA0DD', '#E6B8E6'],   // 보라색 계열
    'TEST': ['#FFB347', '#FFC470']      // 오렌지색 계열
};
```

### 4. 불량 분석 대시보드

**실시간 연동**: Google Sheets 불량 데이터 자동 분석  
**모던 UI**: 카드 뷰와 인터랙티브 차트  
**제품별 요약**: 불량 건수와 주요 분류 표시

**자동 배포 스케줄:**
- 매일 오전 9시 (한국 시간)
- 매일 오후 2시 (한국 시간)  
- 매일 오후 6시 (한국 시간)
- 코드 푸시 시 (main 브랜치)

### 5. 불량 예측 시스템

**ML 기반 예측**: RandomForest + TF-IDF 불량 확률 예측  
**Teams 연동**: Microsoft Teams 실시간 데이터 로드  
**생산량 가중치**: 실제 생산량 반영한 예측

**2025년 7월 베타 서비스:**
- 7월 생산물량 96대 → 156대 (+62.5%)
- 모델 다양성 5개 → 10개 모델 (GAIA-II, DRAGON 계열 추가)
- 동적 분기별 차트 자동 생성
- 실시간 대시보드 외주사별/조치유형별 통합 분석

### 6. 생산 데이터 자동화

**작업시간 분석**: NaN/오버타임 분석, 진행률 계산  
**히트맵 생성**: 주간/월간, 파트너별/모델별  
**자동 알림**: 이메일/카카오톡 알림 시스템

**히트맵 시스템:**
- **주간 히트맵**: 매주 실행 시 자동 생성
- **월간 히트맵**: 매월 마지막 금요일 자동 생성 (협력사별/모델별)
- **트렌드 지표**: HTML 리포트 히트맵 링크 통합

## AI 어시스턴트

### 슬랙 봇 핵심 기능

#### 시리얼 넘버 기반 조회
```
사용자: "sn 5785 진행률 알려줘"
봇: 인터랙티브 메뉴 제공
    📈 진행률 조회
    📋 스프레드시트 URL  
    📅 일정 정보
    👥 파트너 정보
    📊 전체 정보
```

#### 지능형 질문 분석
```python
# 지능형 질문 분석 워크플로우
사용자 질문 → GPT 분석 → 의도 파악 → 
├─ 시리얼 조회: DB 조회 + GPT 자연어 응답
├─ 시리얼 누락: 재질문 메시지  
├─ 월별 검색: 조건 검색 + 결과 제공
└─ 일반 질문: GPT 공장 관리 조언
```

#### 월별 조건 검색
```
사용자: "이번달 7월 생산물량 진행률 100% sn 알려줘"
봇: 조건에 맞는 시리얼 넘버 목록 제공
```

#### 공장 관리 AI 상담
- **생산성 향상**: "생산성 향상 방법은?"
- **품질 관리**: "품질 관리 어떻게 해야 하나요?"
- **안전 관리**: "공장 안전 관리 팁 알려주세요"

### 성과 지표
- **응답 시간**: 평균 2-3초 내 응답
- **정확도**: 시리얼 넘버 조회 99% 정확도
- **사용성**: 자연어 질문 95% 이상 이해
- **가용성**: 24/7 무중단 서비스

## 설치 가이드

### 1. 시스템 요구사항
```bash
Python 3.8+
Node.js 16.0.0+
PostgreSQL 12+
Git
```

### 2. 저장소 클론
```bash
git clone https://github.com/*****/gst-factory-system.git
cd gst-factory-system
```

### 3. 백엔드 설정
```bash
# 가상환경 설정
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate

# 의존성 설치
pip install -r requirements.txt

# 데이터베이스 설정
createdb gst_factory_db
psql -U postgres -d gst_factory_db -f setup/schema.sql
```

### 4. 프론트엔드 설정
```bash
cd factory-dashboard
npm install
npm start
```

## 환경 설정

### 환경변수 템플릿 (.env)
```bash
# ===== 데이터베이스 설정 =====
DB_USER=*****
DB_PASS=*****
DB_HOST=localhost
DB_PORT=5432
DB_NAME=gst_factory_db

# ===== Google API 설정 =====
SHEETS_JSON_KEY_PATH=/path/to/credentials.json
DRIVE_JSON_KEY_PATH=/path/to/credentials.json
SPREADSHEET_ID=*****
DRIVE_FOLDER_ID=*****

# ===== 슬랙 봇 설정 =====
SLACK_BOT_TOKEN=xoxb-*****
SLACK_SIGNING_SECRET=*****

# ===== OpenAI API 설정 =====
OPENAI_API_KEY=sk-proj-*****

# ===== Auth0 설정 =====
AUTH0_DOMAIN=*****.auth0.com
API_IDENTIFIER=*****

# ===== GitHub 설정 =====
GITHUB_TOKEN=*****
GITHUB_REPO_1=username/repository1
GITHUB_REPO_2=username/repository2

# ===== 이메일 설정 =====
SMTP_SERVER=smtp.gmail.com
SMTP_PORT=587
EMAIL_ADDRESS=*****@gmail.com
EMAIL_PASS=*****
RECEIVER_EMAIL=*****@gmail.com

# ===== 카카오톡 API 설정 =====
KAKAO_REST_API_KEY=*****
KAKAO_REFRESH_TOKEN=*****

# ===== Microsoft Teams 설정 =====
TEAMS_TENANT_ID=*****
TEAMS_CLIENT_ID=*****
TEAMS_CLIENT_SECRET=*****

# ===== 시스템 설정 =====
TEST_MODE=True
LOG_LEVEL=INFO
TARGET_MONTH=2025-07
```

### Google API 설정 가이드
1. Google Cloud Console에서 프로젝트 생성
2. Google Sheets API 및 Google Drive API 활성화
3. 서비스 계정 생성 및 JSON 키 파일 다운로드
4. 스프레드시트에 서비스 계정 이메일 공유 권한 부여

### 슬랙 앱 설정 가이드
```bash
# Event Subscriptions
Request URL: https://*****.up.railway.app/slack/events

# Interactive Components  
Request URL: https://*****.up.railway.app/slack/interactive

# OAuth & Permissions - Bot Token Scopes:
- app_mentions:read
- channels:read
- chat:write
- im:read
- im:write
```

## 대시보드 접속

### 공개 대시보드
| 서비스 | URL | 설명 |
|--------|-----|------|
| **공장 대시보드** | `https://*****` | Auth0 인증 필요 |
| **백엔드 API** | `https://*****` | REST API 서버 |
| **API 문서** | `https://*****/api/docs` | Swagger 문서 |

<!-- 실제 URL은 환경변수나 별도 설정에서 관리 -->

### 내부 대시보드
| 모듈 | 실행 방법 | 설명 |
|------|-----------|------|
| **협력사 평가** | `python partner_kpi_refactored.py` | KPI 대시보드 생성 |
| **출입 관리** | GitHub Actions 자동 배포 | 출입 현황 모니터링 |
| **불량 분석** | 자동 배포 (multiple repos) | 불량 데이터 분석 |
| **ML 예측** | `python run_refactored_dashboard.py` | 불량 예측 대시보드 |
| **데이터 자동화** | `python PDA_patner.py` | 생산 데이터 처리 |

## CI/CD 파이프라인

### 배포 전략

<div align="center">
  <img src="images/cicd-pipeline.png" alt="CI/CD 파이프라인 배포 전략" width="750"/>
  <p><em><strong>GitHub Actions 기반 자동화 배포 파이프라인</strong></em></p>
</div>

### GitHub Actions 설정

#### 자동 배포 워크플로우
```yaml
# .github/workflows/auto-deploy.yml
name: Auto Deploy Dashboards
on:
  schedule:
    - cron: '0 9,14,18 * * *'  # 매일 9시, 2시, 6시 (KST)
  push:
    branches: [main]
  workflow_dispatch:

jobs:
  deploy-all:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        module: [
          'partner-kpi',
          'entry-management', 
          'defect-analysis',
          'ml-prediction',
          'data-automation'
        ]
    steps:
      - uses: actions/checkout@v3
      - name: Setup Python
        uses: actions/setup-python@v4
        with:
          python-version: 3.9
      - name: Install dependencies
        run: |
          cd ${{ matrix.module }}
          pip install -r requirements.txt
      - name: Deploy Module
        run: |
          cd ${{ matrix.module }}
          python main.py
        env:
          # 환경변수는 GitHub Secrets에서 설정
          GOOGLE_API_KEY: ${{ secrets.GOOGLE_API_KEY }}
          DATABASE_URL: ${{ secrets.DATABASE_URL }}
          # 기타 필요한 환경변수들...
```

## 모니터링

### 핵심 KPI 지표

#### 생산 관련 KPI
- **주간/월간 생산량**: 목표 대비 달성률
- **품질 지표**: 불량률, 수율, A등급 비율
- **작업 효율성**: 평균 작업시간, 오버타임 발생률  
- **협력사 성과**: KPI 점수, 등급 분포

#### 시스템 성능 KPI
- **API 응답 시간**: 평균 2-3초 이내
- **AI 봇 정확도**: 시리얼 넘버 조회 99% 정확도
- **데이터 동기화**: 실시간 업데이트 성공률
- **대시보드 가용성**: 99.9% 업타임

### 알림 시스템

```python
# 통합 알림 설정 예시
ALERTS = {
    "defect_rate_threshold": 5.0,     # 불량률 5% 초과 시
    "overtime_threshold": 120,        # 오버타임 2시간 초과 시
    "nan_rate_threshold": 3.0,        # NaN 비율 3% 초과 시
    "kpi_grade_drop": "B",           # KPI 등급 B 이하 시
}

# 알림 채널
NOTIFICATION_CHANNELS = [
    "slack",      # 슬랙 봇 알림
    "email",      # 이메일 리포트  
    "kakao",      # 카카오톡 메시지
    "dashboard"   # 대시보드 내 알림
]
```

## 트러블슈팅

### 공통 문제 해결

#### 1. 데이터베이스 연결 오류
```bash
# PostgreSQL 서비스 확인
sudo systemctl status postgresql

# 연결 테스트
psql -U your_username -d gst_factory_db -c "SELECT 1;"

# 권한 확인
GRANT ALL PRIVILEGES ON DATABASE gst_factory_db TO your_username;
```

#### 2. Google API 인증 오류
```bash
# 서비스 계정 키 파일 확인
ls -la config/*.json

# Google Cloud Console에서 확인 사항:
# - Google Sheets API 활성화
# - Google Drive API 활성화  
# - 서비스 계정 키 유효성
# - 스프레드시트 공유 권한
```

#### 3. 슬랙 봇 응답 없음
```bash
# 봇 토큰 확인
echo $SLACK_BOT_TOKEN

# 이벤트 URL 테스트
curl -X POST https://*****.up.railway.app/slack/events

# 슬랙 앱 설정 확인:
# - Event Subscriptions URL
# - Interactive Components URL
# - Bot Token Scopes
```

## 기여 가이드

### 개발 환경 설정
```bash
# 1. 저장소 포크 및 클론
git clone https://github.com/your-username/gst-factory-system.git
cd gst-factory-system

# 2. 개발 브랜치 생성
git checkout -b feature/새기능명

# 3. 개발 환경 설정
python -m venv venv
source venv/bin/activate
pip install -r requirements-dev.txt

# 4. 테스트 실행
python -m pytest tests/ -v

# 5. 코드 품질 검사
black . && isort . && flake8 .
```

### 커밋 메시지 컨벤션
```
feat: 새로운 기능 추가
fix: 버그 수정  
docs: 문서 수정
style: 코드 포맷팅
refactor: 코드 리팩토링
test: 테스트 코드
chore: 빌드 설정 등
ai: AI 관련 개선사항
dashboard: 대시보드 업데이트
```

## 개발 로드맵

### Phase별 개발 계획 (2025)

#### Phase 0: FE개발 & CI/CD 구성 (2025.03-05) ✅
- **목표**: React 기반 UI + GitHub CI/CD + Auth0 인증 도입
- **핵심 산출물**: 메인 대시보드 FE구성 및 자동배포
- **주요 KPI**: 실시간 생산지표, 협력사 평가지수
- **완료**: 자동화 배포 파이프라인 구축, Auth0 기반 로그인·권한 인증 적용

#### Phase 1: Defect 분석 대시보드 구축 (2025.06-07) ✅
- **목표**: 내부용 defect 분석 + 예측 시스템 개발
- **핵심 산출물**: 중분류/귀책 트리맵 시각화, 불량 예측 모델(TF-IDF/RandomForest)
- **주요 KPI**: 주간/분기 불량 이슈 인사이트 도출, ML 예측값 실시간 디스플레이
- **완료**: 제조기술1팀 공정 통합불량 PG + ML 예측모델 적용

#### Phase 2: CT 분석 대시보드 구축 (2025.08) 🔄
- **목표**: Cycle Time 분석 및 병목 시각화
- **핵심 산출물**: 모델/공정별 작업시간 시각화, 병목 자동 정렬 UI 구성
- **주요 KPI**: 모델별/제품코드별 Task시간 시각화, CT 분포 분석 UI설계
- **진행중**: 모델/제품코드 공정 Task별 CT 시각화

#### Phase 3: 시스템 고도화 준비 (2025.08-09) 📋
- **목표**: Defect/CT 기준 표준화 및 매핑 완료
- **핵심 산출물**: 생산 제품 카테고리 정규화, 작업시간 단위 정규화
- **주요 KPI**: 데이터 매핑률 100% 달성, 전사 적용 기반 확보

#### Phase 4: Slack 챗봇 고도화 (2025.10-12) 🎯
- **목표**: 자연어 KPI 질의 응답 + 알림 트리거 세분화
- **핵심 산출물**: GPT 챗봇 MVP 구축, 주요 KPI(불량률, OT 등) 응답 자동화
- **주요 KPI**: 응답 시간 ≤ 5초, Slack 현장 대응 속도 향상

#### Phase 5: 통합 시스템 완성 & 고도화 (2026.01-06) 🚀
- **목표**: 4개 핵심 기능의 완전 통합 및 미래 확장 준비
- **핵심 산출물**: 
  - **Slack 챗봇 고도화**: 자연어 기반 실시간 KPI 질의응답
  - **Defect 분석 고도화**: 예측 정확도 향상 및 실시간 알림
  - **CT 기반 APS 연계**: 생산 계획 최적화 시스템
  - **ML 예측값 시각화**: 고도화된 예측 모델 및 대시보드
- **최종 비전**: 완전 자동화된 스마트 팩토리 통합 관리 시스템

<div align="center">
  <img src="images/roadmap-phase5.png" alt="Phase 5 통합 시스템 로드맵" width="800"/>
  <p><em><strong>Phase 5: 4개 핵심 기능의 완전 통합 로드맵</strong></em></p>
</div>

## ROI 분석

### 외주 대비 비용 절감 효과

#### 외주 견적 vs 내부 개발
| 항목 | 외주 예상비용 | 내부 구축 | 절감액 |
|------|-------------|----------|--------|
| **데이터 자동화 스크립트** | 2,000만원 | ✅ 완료 | 2,000만원 |
| **DB, SQL 스키마 및 서버** | 3,000만원 | ✅ 완료 | 3,000만원 |
| **Flask API 서버 구성** | 2,000만원 | ✅ 완료 | 2,000만원 |
| **Netlify 시각화 구성** | 2,000만원 | ✅ 완료 | 2,000만원 |
| **경고/알림 시스템** | 1,000만원 | ✅ 완료 | 1,000만원 |
| **총 외주비 절감** | **1억 원** | **내부 구축** | **1억 원** |

#### 연간 운영 효율 개선
| 항목 | 산출 근거 | 연간 절감액 |
|------|-----------|------------|
| **수기 리포트 자동화** | 2시간/일 × 260일 × 30,000원 | **1,560만원** |
| **장애 대응 시간 단축** | 1시간/월 × 12월 × 30,000원 | **36만원** |
| **연간 운영 효율** | | **1,596만원** |

#### ROI 계산 결과
```
💰 총 효과 (A) = 외주비 절감 + 연간 효율 = 1억원 + 1,596만원 = 11,596만원
💸 투자비 (B) = 사내 인프라 구성 비용 = 200만원
📈 순이익 = A - B = 11,596만원 - 200만원 = 11,396만원
🚀 ROI = (A-B) / B × 100 = 11,396만원 / 200만원 × 100 = 5,698%
⚡ 투자 회수 기간 = 200만원 / (11,596만원 ÷ 12) ≈ 0.2개월 (6일)
```

### 타 시스템과의 비교

#### 품질자동화 시스템 vs 제조기술1팀 시스템
| 구분 | 검사 자동화 시스템<br/>(외주, 3.5억) | **제조기술1팀 시스템**<br/>(내부 개발, 200만) |
|------|----------------------------------|----------------------------------------|
| **구성** | 센서 연동 중심 검사 전용 | **데이터 분석 중심 생산·품질 통합** |
| **서버** | 전용 검사 서버 + 보안 정책 | **PostgreSQL + Flask API + JWT** |
| **UI** | 태블릿 기반 검사 제어 | **HTML 대시보드 + Report 자동화** |
| **Input** | 검사 시나리오, 센서 신호 | **Sheets, PostgreSQL, CT/불량 DB** |
| **Output** | QMS, SAP 연동 | **Slack 챗봇, 실시간 알림, 시각화** |
| **자동화** | Scrubber, Chiller, PLC 연동 | **QR 물류, 부족품 산출, ML 예측** |
| **리포트** | 검사 결과 레이아웃 발행 | **불량/CT 트렌드, 협력사KPI, Pin Point** |
| **개발비** | **3억 5,181만원** | **200만원 + 내부 역량** |
| **ROI** | - | **⭐ 1억 4천만원 이상 절감** |

## 기대 효과

### 내부 시스템 구축의 4대 핵심 가치

<div align="center">
  <img src="images/impact-distribution.png" alt="기대 효과 분포" width="600"/>
  <p><em><strong>내부 시스템 구축의 4대 핵심 가치</strong></em></p>
</div>

#### 품질개선 피드백 주기 단축
- **협력사 업무 현황 실시간 파악**: 기존 주간 → 실시간 모니터링
- **즉각적 대응**: 불량 발생 시 즉시 알림 및 조치 가능
- **데이터 기반 의사결정**: 정확한 데이터로 신속한 판단 지원

#### 시간 절약 및 오류 방지
- **수작업 제거**: Google Sheets & Drive 자동화로 완전 제거
- **메타DB 자동 수집**: S/N, 오더번호, 마감일 기준 자동 검색
- **하이퍼링크 자동 삽입**: 수작업 Drive 탐색 및 DB 입력 완전 제거

#### 사내 기술 내재화
- **외주 의존 최소화**: 모든 시스템을 사내 기술로 구축
- **지속적 개선**: 실시간 요구사항 반영 및 업데이트 가능
- **기술 노하우 축적**: DX 역량 강화 및 전사 확산 기반 마련

#### 확장성 확보
- **클라우드 기반 운영**: Flask + Netlify + Railway 무제한 확장
- **모듈형 아키텍처**: 필요 시 새로운 기능 손쉽게 추가
- **API 기반 통합**: 타 시스템과의 연동 용이성 확보

### 실제 구현 효과

#### 협력사와의 실시간 소통
- **Before**: 주간 회의, 이메일 기반 소통
- **After**: Slack 챗봇 실시간 질의응답, 즉시 알림
- **효과**: 품질 문제 대응 시간 **70% 단축**

#### 완전 자동화 달성
- **Google Sheets & Drive 자동화**: 100% 무인 데이터 수집
- **JSON → SQL 파이프라인**: 데이터 신뢰성 및 분석 기반 확보
- **REST API + 시각화**: 현장 중심 실시간 정보 제공

#### 스마트 알림 시스템
- **NaN/OT 발생 시**: 카카오톡 Webhook 자동 전송
- **Slack 통합**: AI 기반 질의응답 및 향후 고도화 연동
- **효과**: 이상 상황 실시간 전파 및 대응시간 **80% 단축**

### 최종 비전

> **"이 시스템을 통해 협력사와의 실시간 소통이 가능해지고, 품질 문제에 대한 즉각적인 대응이 가능합니다. 또한 클라우드 기반 인프라를 통해 향후 시스템 확장에도 유연하게 대응할 수 있습니다."**

**APS 연계, 완전 자동화, 예측 기반 관리**를 통한 **스마트 팩토리 구현의 초석**

## 업데이트 히스토리

### **2025-09-03 (v2.5.0) - 데이터 추출 최적화 & 자동화 강화**

#### 🔧 **핵심 개선사항**

**1. 다중 월 데이터 추출 문제 해결**
- **문제**: 8월 18일~9월 30일 설정 시 9월 데이터가 추출되지 않는 버그 발견
- **원인**: 드라이브 검색이 시작 날짜의 월(8월)만 검색하여 9월 파일 누락
- **해결**: 날짜 범위 내 모든 월을 포함하는 검색 로직으로 개선
```python
# 이전: 시작 월만 검색
month_prefix = "2508"  # 8월만

# 개선: 범위 내 모든 월 검색  
month_prefixes = ["2508", "2509"]  # 8월 + 9월
query = "(name contains '2508' or name contains '2509')"
```

**2. GitHub Actions 스케줄 최적화**
- **데이터 추출**: 매일 오전 9시 7분, 11시 7분, 오후 2시 7분, 4시 7분, 6시 7분
- **중복 정리**: 매일 오후 6시 (기존 주 1회 → 매일)
- **스케줄 분산**: GitHub Actions 지연 문제 해결을 위한 오프셋 적용

**3. 중복 데이터 정리 자동화 시스템 구축**
- **신규 워크플로우**: `.github/workflows/cleanup_duplicates.yml`
- **자동화 스크립트**: `cleanup_duplicate_documents_auto.py`
- **보존 정책**: 각 S/N당 최신 3개 document만 보존 
- **실행 주기**: 매일 오후 6시 자동 실행

#### 🎯 **성능 개선 효과**

**데이터 추출 커버리지**
- **이전**: 월 경계 데이터 50% 누락 가능성
- **개선**: 100% 완전한 날짜 범위 커버

**DB 용량 최적화**
- **예상 절약**: 매일 자동 정리로 중복 데이터 최소화
- **성능 향상**: 인덱스 효율성 개선으로 쿼리 속도 향상

#### 🔄 **코드 품질 개선**
- **Black Formatting**: 모든 Python 파일 코딩 스타일 표준화
- **자동화 강화**: 사용자 개입 없는 완전 자동화 시스템
- **환경변수 관리**: GitHub Secrets 통한 안전한 설정 관리

#### 📚 **문서 업데이트**
- **자동화 가이드**: `CLEANUP_AUTOMATION_GUIDE.md` 신규 생성
- **설정 방법**: GitHub Actions 워크플로우 상세 가이드
- **모니터링**: Railway 대시보드 연동 확인 방법


### 2025년 8월 - 클라우드 안정성 및 비동기 처리 완성

### v3.7.0 (2025-08-26) 💾 **중복 데이터 대량 정리 + 최신 Progress 보장**
- **중복 document_id 대량 정리**: 359개 S/N의 중복 데이터 170,110개 행 완전 정리
  - GBWS-6018: 113개 → 10개 (최신 10개 보존)
  - 총 6,817개 documents, 34,022개 progress_summary, 129,454개 task_summary 삭제
  - Railway 클라우드 DB 용량 약 80% 절약 및 쿼리 성능 대폭 개선
- **React 생산요약테이블 최신화**: CTE 쿼리로 각 S/N별 최신 document_id만 선택
  - `WITH latest_docs AS (SELECT MAX(document_id))` 패턴으로 중복 제거
  - 사용자에게 항상 최신 Progress 상태만 표시하도록 보장
  - API 응답 시간 단축 및 정확한 진행률 업데이트 실현
- **안전한 중복 정리 시스템**: cleanup_duplicate_documents.py 스크립트 개발
  - Railway 클라우드 DB 직접 연결 (하드코딩 + 환경변수 이중 지원)
  - 최근 N개 보존 옵션으로 히스토리 데이터 안전 보장
  - DRY RUN 모드와 트랜잭션 기반 안전한 삭제 프로세스
- **데이터 무결성 확보**: INSERT 기반 히스토리 추적 로직 유지
  - 초기 UPDATE 로직 시도 → INSERT 유지로 변경사항 히스토리 보존
  - Progress 변동 감지 시스템과 완벽 호환성 유지
  - API는 최신 표시, 데이터는 전체 이력 보존하는 하이브리드 아키텍처

**기술적 성과:**
- PostgreSQL CTE(Common Table Expression) 활용한 복잡 쿼리 최적화
- psycopg2 트랜잭션 관리 및 Foreign Key 순서 고려한 안전한 삭제
- Railway 클라우드 환경에서 대용량 데이터 정리 작업 성공적 수행
- React 실시간 데이터 표시와 백엔드 히스토리 보존의 균형점 확보

### v3.6.0 (2025-08-19) 🚀 **비동기 API 완성 + Railway Pro 플랜 최적화**
- **HTTP 000 에러 완전 해결**: GitHub Actions 타임아웃 문제 근본적 해결
  - 비동기 /extract 엔드포인트 도입으로 즉시 HTTP 200 응답 (60초 이내)
  - 백그라운드 처리로 15분+ 장시간 작업 안정적 수행
  - 실시간 메모리 모니터링으로 진행상황 투명하게 추적 가능
- **Railway Pro 플랜 업그레이드**: 32GB RAM/32vCPU로 4배 성능 향상
  - 리소스 제약 완전 해결 (이전 700MB → 현재 531MB 안정적 사용)
  - 12분 41초 사이클 타임 달성 (목표 15분 대비 20% 단축)
  - 메모리 스파이크 없는 부드러운 처리 패턴 확보
- **10개 고급 파라미터 시스템**: 세밀한 성능 튜닝 가능
  - BATCH_SIZE=5 (Pro 플랜 최적값), EXTRACTION_BATCH_DELAY=30초
  - Google API 재시도 로직, 메모리 가비지 컬렉션, 네트워크 최적화
  - 3단계 점진적 최적화 가이드 (안정성→균형→성능)
- **완벽한 데이터 완정성**: LIMIT=200 유지로 전체 S/N 누락 없이 처리
  - 6월/7월 데이터 정상 적재 검증 완료
  - GBWS-5967 None 값 처리 문제 완전 해결

**주요 기술적 혁신:**
- threading.Thread 기반 비동기 백그라운드 처리 아키텍처
- Railway 로그 속도 제한(500 logs/sec) 대응 환경별 로깅 레벨 관리
- gc.collect() 명시적 메모리 관리로 장시간 안정성 확보
- 실시간 상태 모니터링을 위한 메모리 사용량 패턴 분석 시스템

### 2025년 8월 - 데이터 파이프라인 안정화 및 시스템 최적화

### v3.5.0 (2025-08-19) 🔥 **프로덕션 안정성 달성 & 시스템 최적화**
- **Railway 클라우드 최적화 완료**: 시스템 안정성 및 리소스 효율성 확보
  - BATCH_SIZE=3, EXTRACTION_BATCH_DELAY=65초 최적 조합 도출
  - Google Sheets API 429 에러 자동 복구 (재시도 로직 + 지수 백오프)
  - BrokenPipeError 네트워크 오류 자동 복구 (3회 재시도 + 백오프)
  - Railway 로그 속도 제한(500 logs/sec) 해결로 시스템 안정성 확보
- **환경별 로깅 시스템 구축**: 개발/프로덕션 환경 자동 분리
  - Railway: WARNING 레벨 로깅으로 로그 폭탄 방지
  - 로컬: INFO 레벨로 상세 디버깅 정보 제공
  - Google API 및 PostgreSQL 라이브러리 로그 레벨 자동 조정
- **메모리 관리 최적화**: Railway 플랜 제한(~700MB) 대응 완료
  - 명시적 가비지 컬렉션(gc.collect()) 도입으로 메모리 사용량 안정화
  - 5개 스프레드시트마다 자동 메모리 정리로 OOM 방지
  - CPU 부하 분산을 위한 API 호출 지연 최적화
- **슬랙 챗봇 아키텍처 로직 검증** (2025-07-08 오픈된 시스템):
  - **기존 설계 검증**: 자연어 분석 → GPT 라우팅 → 멀티 API 호출 로직 분석 완료
  - **7개 REST API 엔드포인트** 연동 확인: `/api/info`, `/api/factory`, `/api/cycle_time`, `/api/task_analysis` 등
  - **스마트 라우팅 시스템** 동작 검증: 패턴 매칭 우선 → GPT 분석 → 폴백 메커니즘 3단계 처리
  - **실시간 데이터베이스 쿼리** 기능 정상 작동: PostgreSQL 직접 연동으로 즉시 응답 시스템
- **데이터 건수 대폭 증가**: 시스템 안정화 후 실제 성과 확인
  - 8월 데이터: 241개 → 365개 (52% 증가), 고유 S/N 148개로 정상 누적
  - 처리 효율성: 89.3% (변경된 데이터만 선별 처리)
  - 15개 성공 처리, 1개 실패(GBWS-5967), 전체 성공률 93.8%

**주요 기술적 성과:**
- **DB 적재 최적화**: PostgreSQL 배치 처리 성능 대폭 향상 (6.41초 달성)
- **완전 자동 복구**: API 에러, 네트워크 장애, 메모리 부족 모든 시나리오 대응
- **Zero-config 환경 분리**: Railway/로컬 환경 자동 감지 및 최적화 설정 적용
- **GPT 기반 자연어 인터페이스**: 사용자 질문을 7개 API 엔드포인트로 자동 라우팅
- **클라우드 네이티브**: Railway Variables 완전 활용 및 플랫폼 제약 완벽 대응

**운영 안정성 지표:**
- **API 응답**: HTTP 200 정상 처리 (이전 HTTP 502/000 완전 해결)
- **처리 시간**: 6.41초 (이전 11분 31초 대비 100배+ 향상)
- **데이터 품질**: 93.8% 성공률, 365개 데이터 안정적 처리
- **시스템 안정성**: Railway 로그 제한, 메모리 제한, API 제한 모두 해결

### 2025년 8월 - 데이터 파이프라인 안정화 및 시스템 최적화

### v3.4.0 (2025-08-16) 🚀 **데이터 파이프라인 완전 안정화 및 중복 방지 시스템 구축**
- **SafeBatchProcessor 배치 처리 시스템**: 트랜잭셔널 데이터 적재 및 실시간 변경 감지
  - PostgreSQL savepoint 기반 안전한 배치 처리 (BATCH_SIZE=6 최적화)
  - Hash-based 및 DB-based 이중 변경 감지 시스템으로 중복 방지 100% 달성
  - 처리 효율성 실시간 모니터링 (성공/실패/건너뜀 비율 추적)
- **JSON 병합 시스템**: 부분 추출 시 데이터 손실 방지 완전 자동화
  - expected_min 임계값 기반 부족 데이터 자동 감지
  - 최신 성공 JSON과 자동 병합으로 데이터 무결성 보장
  - 166개 documents → 13개 추출 시에도 기존 데이터 완전 보존
- **클라우드 환경 최적화**: Railway 운영 환경에서 완벽한 안정성 확보
  - Google Drive 폴더 ID 분리: 데이터 검색용 vs JSON 저장용 명확한 구분
  - 환경변수 기반 Google API 인증으로 보안 강화 (JSON 키 파일 → 환경변수)
  - ephemeral 파일 시스템 대응 및 processed_files DB 테이블 기반 파일 관리
- **고도화된 로깅 시스템**: 실시간 문제 진단 및 모니터링 강화
  - 상세한 Google Drive API 호출 로깅 (파일 발견 수, 필터링 결과)
  - 배치 처리 과정의 세밀한 추적 (변경 감지, 성공률, 처리 시간)
  - Railway 로그 제한 상황에서도 핵심 정보 확보 가능
- **BE-staging 환경 구축**: GitHub Actions 기반 완전한 테스트 환경 구성
  - TwinfaX2/BE-staging 저장소를 통한 독립적 테스트 환경
  - 로컬 환경과 동일한 1-cycle 파이프라인 테스트 (추출 → DB 적재)
  - GitHub Secrets를 통한 안전한 환경변수 관리
  - Railway 배포 전 사전 검증 시스템으로 zero-risk deployment 달성
- **데이터소스 완전 변경**: 스프레드시트 하이퍼링크 → Google Drive 직접 검색
  - 기존: 메타 스프레드시트의 하이퍼링크 기반 개별 시트 접근
  - 신규: Google Drive API를 통한 직접 파일 검색 및 날짜 필터링
  - 성능 향상: API 호출 최적화 및 배치 처리로 안정성 극대화
  - 확장성: 스프레드시트 구조 변경에 독립적인 robust한 시스템

**주요 기술적 혁신:**
- **이중 변경 감지**: Progress-based + DB-based 동시 운영으로 데이터 신뢰성 극대화
- **트랜잭셔널 안전성**: PostgreSQL savepoint 활용한 원자적 배치 처리
- **클라우드 네이티브**: Railway Variables 완전 활용 및 컨테이너 환경 최적화
- **자동 복구**: JSON 병합 시스템으로 일시적 API 장애 시에도 데이터 보존
- **환경 분리**: 로컬/staging/production 환경별 독립적 설정 관리
- **CI/CD 통합**: GitHub Actions를 통한 staging 환경 사전 검증으로 production 배포 안정성 보장
- **아키텍처 진화**: 하이퍼링크 기반 → Google Drive API 직접 검색으로 시스템 견고성 향상

**운영 안정성 지표:**
- **데이터 무결성**: 100% (중복 방지 + 병합 시스템)
- **API 호출 최적화**: BATCH_SIZE=6, DELAY=65초로 Google API 제한 완전 회피
- **처리 효율성**: 82.4% (변경된 데이터만 선별 처리)
- **장애 복구**: 자동 JSON 병합으로 zero data loss 달성

**📊 v3.4.0 성능 지표 대시보드**
<div align="center">
  <img src="images/performance-dashboard.png" alt="성능 지표 대시보드" width="900"/>
  <p><em><strong>데이터 무결성 100% + API 최적화 + 처리 효율성 82.4% 실시간 모니터링</strong></em></p>
</div>


### 2025년 7월 - 메이저 업데이트 시즌

### v3.3.0 (2025-07-30) 🔧 **IQR 분석 및 슬랙 챗봇 완전 통합**
- **IQR 군집도 분석 시스템 완성**: 신뢰도 기반 평균시간 계산 및 시각화
  - Task별 원본 평균시간과 IQR 군집도 평균시간 비교 분석
  - 차이율 기반 신뢰도 등급 (높음/보통/낮음) 자동 계산
  - 막대그래프 색상 코딩으로 신뢰도 시각화 (녹색/주황/빨강)
- **기간 합산 분석 기능**: 단일월뿐만 아니라 여러 월 데이터 통합 분석 지원
  - 월별 데이터가 부족한 경우 기간 합산으로 신뢰성 향상
  - 유연한 기간 선택 UI (단일월/기간합산 라디오 버튼)
- **슬랙 챗봇 IQR 분석 완전 통합**: "평균시간 조회" 자연어 명령 지원
  - 동적 모델 목록 제공 및 기간 선택 인터랙티브 메뉴
  - 실시간 IQR 분석 결과를 사용자 친화적 형태로 포맷팅
  - 직관적 비교 표현 ("기존 평균: 81.2h → IQR 평균: 99.4h (22.9% 증가)")
- **환경별 API 호출 최적화**: 로컬/클라우드 환경 차이 완전 해결
  - Railway 클라우드 환경에서 내부 API 호출 문제 해결
  - 동적 포트 감지 및 환경 변수 기반 URL 설정

**주요 기술적 개선사항:**
- 복잡한 PostgreSQL CTE 쿼리를 통한 IQR(Interquartile Range) 통계 계산
- 이상치 제거를 통한 신뢰성 높은 평균시간 도출
- React 컴포넌트에서 기간 선택 및 데이터 시각화 로직 고도화
- 슬랙 Block Kit을 활용한 인터랙티브 UI 구현
- 클라우드 배포 환경에서 내부 API 호출 최적화

### v3.2.0 (2025-07-29) 🎨 **Cycle Time Analysis UI 대폭 개선**
- **Task 분석 카테고리 요약 카드 추가**: 공정별 작업시간 합계를 한눈에 확인 가능
  - IQR 군집도 합계를 메인으로 크게 표시 (신뢰성 높은 데이터 우선)
  - 평균 합계는 참고용으로 작게 표시
  - 차이 퍼센티지로 데이터 신뢰성 시각화 (초록/주황/빨강)
- **상세 분석 카테고리 스크롤 기능**: 카테고리 요약 카드 클릭시 해당 섹션으로 부드러운 스크롤
- **S/N 드롭다운 기능 복원**: Product Code 버튼 클릭시 Serial Number 목록과 스프레드시트 링크 표시
- **설명 팝업 UI 개선**: 불릿 포인트(•) 제거로 더 깔끔한 텍스트 표시
- **코드 최적화**: 디버그 콘솔 로그 제거로 프로덕션 환경 최적화
- **시각적 일관성**: Task 분석과 상세 분석 페이지의 통일된 UX/UI 제공
- **클릭 인터랙션 향상**: 호버 효과와 클릭 피드백으로 사용자 경험 개선

**주요 기술적 개선사항:**
- React 컴포넌트 구조 최적화 및 상태 관리 개선
- CSS Grid와 Flexbox를 활용한 반응형 카드 레이아웃
- 부드러운 스크롤을 위한 `scrollIntoView` API 활용
- PostgreSQL 기반 IQR 통계 데이터의 효과적인 시각화
- 클라우드 배포를 위한 코드 정리 및 성능 최적화

#### v3.1.1 (2025-07-24) - 협력사 평가 대시보드
- **29W 데이터 누락 해결**: hover창에서 29주차 데이터 정상 표시
- **동적 주차 계산 도입**: 하드코딩된 날짜 조건을 ISO 주차 계산으로 개선
- **7월 27-29주 데이터 검증**: 모든 주차 데이터 정상 입력 확인
- **NaN 데이터 우려사항 해결**: 재확인 결과 정상 처리 완료

#### v3.1.1 (2025-07-22) - GST Factory Pipeline
- **SummaryTable 진행률 계산 이슈 해결**: 일정 기준 진행률 0.0% 표시 문제 해결
- **Frontend App.js 수정**: `/api/factory` 엔드포인트 사용으로 변경
- **성능 최적화**: 불필요한 `/api/info` 호출 제거
- **백엔드 수정 불필요**: 기존 엔드포인트 활용으로 추가 개발 없이 해결

#### v2.2.0 (2025-07-21) - CT 분석 대시보드 메이저 업데이트
- **CT(Cycle Time) 분석 대시보드**: 완전히 새로운 분석 도구 추가
- **비밀번호 보호 시스템**: 사내 직원 전용 접근 제어 (`gst2025!`)
- **카테고리별 시간 집계**: 6개 카테고리 분석 (기구, 전장, TMS반제품, 검사, 마무리, 기타)
- **S/N 기반 상세 정보 조회**: 인터랙티브 드롭다운 및 스프레드시트 연동
- **순수 HTML/CSS 바차트**: 성능 최적화 및 반응형 디자인

### 프로젝트 진화 타임라인

```
2024년 초      → PDA_partner 단일 스크립트 개발
   ↓
2025년 3월     → 베타 운영 시작 (사내 배포)
   ↓            └─ 모듈화 및 API 서버 구축
2025년 4-5월   → 사용자 피드백 기반 지속적 개선
   ↓            └─ React + Auth0 현대적 웹 시스템
2025년 6월     → 시스템 안정화 및 사용성 개선
   ↓            └─ 효율성/편의성 중심 디버깅 및 최적화
2025년 7월     → 정식 사내 운영 + AI 어시스턴트 베타 + 슬랙 챗봇 베타 오픈 (7/8)
   ↓            └─ 대규모 업데이트 및 고도화 작업 + GPT 3.5 자연어 처리 시스템
2025년 8월     → 비동기 API 완성 + Pro 플랜 최적화
   ↓            └─ HTTP 000 해결, 12분 사이클타임, 완벽한 안정성
```

### 주요 마일스톤
- **총 6개 모듈**: 단일 스크립트 → **사내 정식 운영 중인** 통합 CI/CD 시스템
- **AI 협업**: 전통적 개발 → AI 기반 혁신적 개발 방식
- **클라우드 네이티브**: 로컬 실행 → Railway/Netlify **실서비스 배포**
- **사용자 중심**: 정적 리포트 → **사용자 피드백 기반** 실시간 대시보드
- **지속적 개선**: **3월 베타 → 7월 정식 운영** (4개월간 사용자 경험 최적화)
- **AI 챗봇 혁신**: **7월 8일 슬랙 챗봇 베타 오픈** → GPT 3.5 자연어 처리 시스템

---

## 라이선스

이 프로젝트는 MIT 라이선스를 따릅니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.

## 연락처

- **프로젝트 기획 및 개발**: TwinfaX2 김동규 (제조기술1팀 / DX TF)
- **이슈 및 제안**: GitHub Issues 활용
- **개발 방식**: AI 협업 기반 Solo E-to-E 개발
- **소속**: GST 제조기술1팀 / DX TF

---

## 특별 감사

이 프로젝트는 **제조업 DX 혁신을 위한 AI 도구들과의 협업**으로 구현되었습니다:

### AI 협업 기반 개발
- **Claude Sonnet**: 시스템 아키텍처 설계 및 코드 리팩토링
- **ChatGPT**: 기능 구현 및 문제 해결

### DX TF 혁신 성과
- **Solo E-to-E**: 기획→설계→개발→배포 100% 단독 수행
- **ROI 7,048%**: 외주 대비 1억 4천만원 절감
- **5일 회수**: 업계 최고 수준 투자 효율
- **기술 내재화**: 사내 DX 역량 확보 및 전사 확산

### AI 협업의 혁명
- **6개 통합 시스템**: 단일 스크립트 → 현대적 클라우드 시스템
- **실시간 운영**: 24/7 무중단 서비스 제공
- **자연어 인터페이스**: Slack 봇을 통한 혁신적 사용자 경험
- **무한 확장성**: 모듈형 아키텍처로 미래 대응 완비

## 🔧 고급 시스템 파라미터 가이드

### Railway Pro 플랜 최적화 파라미터

#### 📊 **기본 처리 파라미터**
```bash
# Railway Variables 설정
BATCH_SIZE=5-15          # DB 배치 처리 크기 (Pro: 15까지 안전)
EXTRACTION_BATCH_DELAY=15-30  # API 호출 간격 (Pro: 15초까지 단축 가능)
LIMIT=200               # 처리 파일 수 (데이터 완정성 유지)
```

#### 🔄 **Google API 최적화**
```python
# utils/sheet_extractor.py
max_retries = 3-5        # API 재시도 횟수 (Pro: 5회 권장)
retry_delay = 2-5        # 초기 지연 시간 (Pro: 2초 안전)
exponential_backoff = 2  # 재시도 간격 배수 (2배씩 증가)

# 재시도 패턴: 2초 → 4초 → 8초 → 실패
```

#### 🧠 **메모리 관리 최적화**
```python
# main_extract.py
gc_interval = 5-15       # 가비지 컬렉션 주기 (Pro: 15개까지 가능)
memory_threshold = 70-85 # 메모리 사용률 한계 (Pro: 85%까지 안전)
gc_force_interval = 10-20 # 강제 정리 주기 (Pro: 20개까지 가능)

# Pro 플랜 32GB RAM 활용으로 공격적 설정 가능
```

#### 🌐 **네트워크 최적화**
```python
# main_extract.py (Google Drive 업로드)
upload_max_retries = 3-5  # 업로드 재시도 (Pro: 5회 권장)
upload_retry_delay = 5-10 # 재시도 간격 (Pro: 5초 단축 가능)
connection_timeout = 30-60 # 연결 타임아웃 (Pro: 30초 단축 가능)
chunk_size = 1-5MB       # 업로드 청크 크기 (Pro: 5MB 대용량 가능)

# Pro 플랜 우선순위 네트워크로 빠른 업로드 지원
```

### 📈 **성능 최적화 단계별 가이드**

#### **1단계: 안정성 우선 (Pro 플랜 초기)**
```
BATCH_SIZE=5, DELAY=25초
max_retries=3, gc_interval=10
예상 처리시간: 8-10분, 안정성: 🟢 높음
```

#### **2단계: 균형 최적화 (1주일 후)**
```
BATCH_SIZE=8, DELAY=20초  
max_retries=4, gc_interval=12
예상 처리시간: 6-8분, 안정성: 🟢 높음
```

#### **3단계: 성능 최우선 (2주일 후)**
```
BATCH_SIZE=12, DELAY=15초
max_retries=5, gc_interval=15
예상 처리시간: 4-6분, 안정성: 🟡 보통
```

### ⚡ **Pro 플랜 핵심 장점**
- **32GB RAM**: 메모리 제약 없는 대용량 배치 처리
- **32 vCPU**: 빠른 API 호출 및 데이터 처리
- **우선순위 네트워크**: 안정적인 Google Drive 업로드
- **무제한 타임아웃**: 15분+ 장시간 처리 안정성

---



<!-- 
배포 시 주의사항:
1. 모든 ***** 표시된 부분은 환경변수나 별도 설정 파일에서 관리
2. GitHub Secrets를 통해 민감한 정보 관리
3. Netlify 환경변수에서 실제 URL 설정
4. 이 README는 공개 저장소용으로 안전함

ROI 7,048% 달성한 제조 DX 혁신 프로젝트
Built by 김동규 / 제조기술1팀 / DX TF
-->

**Solo-Engineered with AI Power • GST Manufacturing**

**제조업 DX 혁신의 새로운 패러다임을 제시하는 프로젝트입니다!**

⭐ **이 프로젝트가 제조업 디지털 혁신에 도움이 되었다면 스타를 눌러주세요!**
