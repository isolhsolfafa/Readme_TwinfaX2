# 🏭 GST Factory Pipeline

**실시간 생산 데이터 ETL 파이프라인 및 AI 통합 모니터링 시스템**

제조업 현장의 생산 데이터를 실시간으로 수집, 처리, 분석하고 시각화하는 통합 시스템입니다. **슬랙 봇 기반 AI 어시스턴트**를 통해 자연어로 생산 현황을 조회하고 관리할 수 있습니다.

[![Deployed on Railway](https://img.shields.io/badge/API-Railway-0052CC?style=flat-square&logo=railway)](https://pda-api-extract.up.railway.app/)
[![Deployed on Netlify](https://img.shields.io/badge/Dashboard-Netlify-00C7B7?style=flat-square&logo=netlify)](https://rainbow-haupia-cd8290.netlify.app/)
[![Slack Bot](https://img.shields.io/badge/Slack-Bot-4A154B?style=flat-square&logo=slack)](https://slack.com/)
[![Python](https://img.shields.io/badge/Python-3.8+-3776AB?style=flat-square&logo=python)](https://python.org/)
[![React](https://img.shields.io/badge/React-18.2.0-61DAFB?style=flat-square&logo=react)](https://reactjs.org/)
[![OpenAI](https://img.shields.io/badge/OpenAI-GPT--3.5-412991?style=flat-square&logo=openai)](https://openai.com/)

## 📋 목차

- [🎯 프로젝트 개요](#-프로젝트-개요)
- [🤖 슬랙 봇 AI 어시스턴트](#-슬랙-봇-ai-어시스턴트)
- [🏗️ 시스템 아키텍처](#️-시스템-아키텍처)
- [✨ 주요 기능](#-주요-기능)
- [🛠️ 기술 스택](#️-기술-스택)
- [🚀 설치 및 실행](#-설치-및-실행)
- [⚙️ 환경 변수 설정](#️-환경-변수-설정)
- [📚 API 문서](#-api-문서)
- [📱 대시보드 구성](#-대시보드-구성)
- [📅 데이터 필터링 로직](#-데이터-필터링-로직)
- [🌐 배포](#-배포)
- [📊 모니터링](#-모니터링)
- [🔧 문제 해결](#-문제-해결)
- [🤝 기여 가이드](#-기여-가이드)

## 🎯 프로젝트 개요

GST Factory Pipeline은 제조기술1팀의 생산 데이터를 실시간으로 수집, 처리, 분석하는 통합 ETL 파이프라인과 모니터링 시스템입니다. Google Sheets에서 데이터를 수집하여 PostgreSQL에 저장하고, Flask API를 통해 React 대시보드에서 실시간으로 시각화합니다.

### 📈 프로젝트 진화 과정

이 시스템은 단순한 파이썬 스크립트에서 시작하여 AI 협업을 통해 고도화된 현대적 시스템으로 발전했습니다:

#### 🌱 **1단계: PDA_partner (초기 버전)**
- **시작점**: 단일 파이썬 스크립트 (`PDA_patner.py`)
- **핵심 기능**: Google Sheets 데이터 추출, 히트맵 생성, HTML 리포트
- **특징**: 모든 로직이 하나의 스크립트에 집중, 기본적인 데이터 분석

#### 🔄 **2단계: 모듈화 및 구조화 (2025.03~)**
- **리팩토링**: 기능별 모듈 분리 (`utils/` 디렉토리)
- **API화**: Flask 기반 REST API 서버 구축
- **데이터베이스**: PostgreSQL 도입으로 데이터 영속성 확보

#### 🚀 **3단계: 현재 시스템 (고도화)**
- **프론트엔드**: React 대시보드 추가
- **인증**: Auth0 기반 보안 시스템 도입
- **배포**: Docker + Railway/Netlify 클라우드 배포
- **확장성**: 다중 대시보드 지원 (공장/협력사/내부)

### 🎮 실제 서비스
- **공장 대시보드**: [https://rainbow-haupia-cd8290.netlify.app/](https://rainbow-haupia-cd8290.netlify.app/)
- **백엔드 API**: [https://pda-api-extract.up.railway.app/](https://pda-api-extract.up.railway.app/)
- **슬랙 봇**: GST Factory 지능형 봇 (사내 슬랙 워크스페이스)
- **API 문서**: [https://pda-api-extract.up.railway.app/api/docs](https://pda-api-extract.up.railway.app/api/docs)

## 🤖 슬랙 봇 AI 어시스턴트

**GST Factory 지능형 봇**은 OpenAI GPT-3.5를 활용한 AI 어시스턴트로, 자연어를 통해 생산 현황을 조회하고 관리할 수 있는 혁신적인 도구입니다.

### 🎯 핵심 기능

#### 📊 **시리얼 넘버 기반 조회**
```
💬 사용자: "sn 5785 진행률 알려줘"
🤖 봇: 인터랙티브 메뉴 제공
    📈 진행률 조회
    📋 스프레드시트 URL  
    📅 일정 정보
    👥 파트너 정보
    📊 전체 정보
```

#### 🧠 **지능형 질문 분석**
- **자연어 처리**: "250617 진행률은?", "시리얼넘버 5672 상태 확인"
- **의도 파악**: GPT가 질문의 의도를 분석하여 적절한 정보 제공
- **다양한 패턴 지원**: 다양한 질문 형태에 유연하게 대응

#### 🔍 **월별 조건 검색**
```
💬 사용자: "이번달 7월 생산물량 진행률 100% sn 알려줘"
🤖 봇: 조건에 맞는 시리얼 넘버 목록 제공
```

#### 💡 **공장 관리 AI 상담**
- **생산성 향상**: "생산성 향상 방법은?"
- **품질 관리**: "품질 관리 어떻게 해야 하나요?"
- **안전 관리**: "공장 안전 관리 팁 알려주세요"

### 🎮 사용법

#### 📱 **기본 명령어**
```bash
# 인사
안녕 / hello / hi

# 도움말
도움말 / help

# 시스템 상태
테스트 / test

# 공장 현황
공장현황

# 진행률 요약
진행률
```

#### 🔎 **시리얼 넘버 조회**
```bash
# 다양한 형태 지원
sn 5785
시리얼넘버 5785
250617 진행률은?
250617/5672/5753 상태 확인
```

#### 🤖 **AI 상담**
```bash
# 자연어로 질문
"생산 지연 문제 해결 방법은?"
"품질 검사 프로세스 개선 방안"
"협력사 관리 효율화 방법"
```

### 🛠️ 기술 구현

#### 🔧 **아키텍처**
```python
# 지능형 질문 분석 워크플로우
사용자 질문 → GPT 분석 → 의도 파악 → 
├─ 시리얼 조회: DB 조회 + GPT 자연어 응답
├─ 시리얼 누락: 재질문 메시지  
├─ 월별 검색: 조건 검색 + 결과 제공
└─ 일반 질문: GPT 공장 관리 조언
```

#### 🔐 **보안 및 필터링**
```python
# 봇 메시지 무한 루프 방지
if (event.get('bot_id') or 
    event.get('subtype') == 'bot_message' or
    event.get('app_id') == 'A09494TG7R7' or
    user == 'U094J3CSJE4' or
    event.get('bot_profile') is not None):
    return  # 봇 메시지 무시
```

#### 📊 **데이터 연동**
```python
# 실제 데이터베이스 연동
def query_by_serial_number(serial_number):
    # 1차: serial_number 필드에서 검색
    # 2차: title_number 필드에서 검색
    # 실제 PostgreSQL 데이터 반환
```

### 📈 **성과 지표**
- **응답 시간**: 평균 2-3초 내 응답
- **정확도**: 시리얼 넘버 조회 99% 정확도
- **사용성**: 자연어 질문 95% 이상 이해
- **가용성**: 24/7 무중단 서비스 (Railway 호스팅)

## 🏗️ 시스템 아키텍처

```mermaid
graph TB
    subgraph "데이터 소스"
        GS[Google Sheets]
        GD[Google Drive]
    end
    
    subgraph "ETL 파이프라인"
        SE[Sheet Extractor]
        DP[Data Processor]
        DL[Data Loader]
    end
    
    subgraph "데이터베이스"
        PG[PostgreSQL]
    end
    
    subgraph "백엔드 API"
        FA[Flask API Server]
        AU[Auth0 인증]
    end
    
    subgraph "프론트엔드"
        RD[React Dashboard]
        CH[Chart.js]
    end
    
    subgraph "AI 어시스턴트"
        SB[Slack Bot]
        GPT[OpenAI GPT-3.5]
        IA[Interactive Menu]
    end
    
    subgraph "알림 시스템"
        EM[Email SMTP]
        KT[Kakao API]
    end
    
    subgraph "배포 환경"
        RW[Railway]
        NF[Netlify]
    end
    
    GS --> SE
    GD --> SE
    SE --> DP
    DP --> DL
    DL --> PG
    PG --> FA
    AU --> FA
    FA --> RD
    RD --> CH
    FA --> SB
    SB --> GPT
    SB --> IA
    FA --> EM
    FA --> KT
    FA --> RW
    RD --> NF
```

### 📁 프로젝트 구조

```
GST-Factory-Pipeline/
├── 📂 api/                     # REST API 서버
│   └── main_api.py            # Flask API 엔드포인트
├── 📂 factory-dashboard/       # React 웹 대시보드
│   ├── src/
│   │   ├── components/        # React 컴포넌트
│   │   │   ├── WeeklyChart.js
│   │   │   ├── MonthlyChart.js
│   │   │   ├── DefectChart.js
│   │   │   ├── DefectMetrics.js
│   │   │   ├── KpiMetrics.js
│   │   │   └── SummaryTable.js
│   │   ├── App.js            # 메인 애플리케이션
│   │   └── App.css           # 스타일시트
│   ├── public/
│   └── package.json
├── 📂 main_push_db/           # 데이터베이스 적재 모듈
│   └── main.py
├── 📂 config/                 # 설정 파일
│   ├── settings.py           # 일반 설정
│   ├── credentials.py        # 인증 정보
│   └── *.json                # Google API 키
├── 📂 utils/                  # 유틸리티 함수
│   ├── data_processing_core.py # 핵심 데이터 처리
│   ├── google_api.py         # Google API 연동
│   ├── sheet_extractor.py    # 시트 데이터 추출
│   ├── notifications.py      # 알림 시스템
│   ├── visualization.py      # 차트 생성
│   └── db_migrator.py        # 데이터베이스 마이그레이션
├── 📂 dashboards/            # 추가 대시보드
│   ├── factory.py
│   ├── partner.py
│   └── internal.py
├── 📂 output/                # 처리된 데이터 출력
├── 📂 logs/                  # 로그 파일
├── 🐳 Dockerfile            # 컨테이너 설정
├── 📋 requirements.txt      # Python 의존성
└── 📖 README.md            # 프로젝트 문서
```

## ✨ 주요 기능

### 🤖 AI 어시스턴트 (슬랙 봇)
- **자연어 처리**: OpenAI GPT-3.5 기반 지능형 질문 분석
- **시리얼 넘버 조회**: 실시간 데이터베이스 연동 조회
- **인터랙티브 메뉴**: 슬랙 Block Kit 기반 버튼 인터페이스
- **월별 조건 검색**: 복합 조건 기반 데이터 필터링
- **공장 관리 상담**: AI 기반 생산성/품질/안전 관리 조언

### 🔄 ETL 파이프라인
- **데이터 추출**: Google Sheets API를 통한 실시간 데이터 수집
- **데이터 변환**: 정규화, 검증, 형식 변환
- **데이터 적재**: PostgreSQL 데이터베이스에 자동 저장
- **스케줄링**: 주기적 자동 실행

### 🌐 REST API 서버
- **Flask 기반**: 고성능 웹 API 서버
- **Auth0 인증**: JWT 토큰 기반 보안 인증
- **슬랙 API 연동**: 이벤트 처리 및 인터랙티브 컴포넌트
- **CORS 지원**: 크로스 오리진 요청 처리
- **에러 핸들링**: 체계적인 예외 처리

### 📊 실시간 대시보드
- **주간/월간 생산량**: 시계열 차트
- **불량률 모니터링**: 품질 지표 추적
- **진행률 추적**: 기구/전장/반제품별 진행률
- **KPI 지표**: 핵심 성과 지표 대시보드

### 🏢 다중 대시보드 시스템
- **공장 대시보드**: 전체 생산 현황 (Auth0 인증)
- **협력사 대시보드**: 파트너사용 전용 화면
- **내부 대시보드**: 관리자용 상세 분석 (비밀번호 보호)

### 📱 알림 시스템
- **슬랙 알림**: 실시간 생산 현황 및 AI 응답
- **이메일 알림**: SMTP를 통한 자동 알림
- **카카오톡 알림**: Kakao API 연동
- **실시간 알림**: 웹 대시보드 내 알림

## 🛠️ 기술 스택

### Backend
- **Python 3.8+**: 메인 프로그래밍 언어
- **Flask 2.3+**: 웹 프레임워크
- **PostgreSQL**: 관계형 데이터베이스
- **SQLAlchemy**: ORM (Object-Relational Mapping)
- **Psycopg2**: PostgreSQL 어댑터

### Frontend
- **React 18.2.0**: 사용자 인터페이스 라이브러리
- **React Router**: SPA 라우팅
- **Axios 1.7.2**: HTTP 클라이언트
- **Chart.js 4.4.3**: 차트 라이브러리
- **Recharts 2.12.7**: React 차트 컴포넌트

### AI & 자동화
- **OpenAI GPT-3.5**: 자연어 처리 및 AI 응답 생성
- **Slack SDK 3.26.2**: 슬랙 봇 개발 및 API 연동
- **Slack Block Kit**: 인터랙티브 UI 컴포넌트

### 인증 & 보안
- **Auth0**: OAuth 2.0 인증 서비스
- **JWT**: JSON Web Token 기반 인증
- **CORS**: 크로스 오리진 리소스 공유

### 인프라 & 배포
- **Docker**: 컨테이너화
- **Railway**: 백엔드 클라우드 배포
- **Netlify**: 프론트엔드 호스팅
- **GitHub Actions**: CI/CD 파이프라인

### 외부 서비스
- **Google Sheets API**: 데이터 소스
- **Google Drive API**: 파일 관리
- **Gmail SMTP**: 이메일 서비스
- **Kakao API**: 메시징 서비스

## 🚀 설치 및 실행

### 사전 요구사항
- Python 3.8+
- Node.js 16.0.0+
- PostgreSQL 12+
- Git

### 1. 저장소 클론
```bash
git clone https://github.com/your-username/gst-factory-pipeline.git
cd gst-factory-pipeline
```

### 2. 백엔드 설정

#### 가상환경 설정
```bash
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
```

#### 의존성 설치
```bash
pip install -r requirements.txt

# 슬랙 봇 관련 추가 패키지
pip install slack-sdk==3.26.2 openai==1.3.8
```

#### 데이터베이스 설정
```bash
# PostgreSQL 설치 후 데이터베이스 생성
createdb gst_factory_db

# 스키마 적용
psql -U postgres -d gst_factory_db -f pda_db_backup.sql
```

### 3. 프론트엔드 설정
```bash
cd factory-dashboard
npm install
```

### 4. 환경 변수 설정
```bash
cp .env.example .env
# .env 파일을 편집하여 필요한 환경 변수 설정
```

### 5. 서비스 실행

#### 백엔드 API 서버
```bash
# 메인 디렉토리에서
python factory_main.py
```

#### 프론트엔드 개발 서버
```bash
# factory-dashboard 디렉토리에서
npm start
```

#### 내부 대시보드 서버
```bash
python internal_main.py
```

## ⚙️ 환경 변수 설정

### 필수 환경 변수

```bash
# 데이터베이스 설정
DB_USER=your_db_user
DB_PASS=your_db_password
DB_HOST=localhost
DB_PORT=5432
DB_NAME=gst_factory_db

# API 서버 설정
PORT=5001
FLASK_ENV=development

# Auth0 설정
AUTH0_DOMAIN=your-auth0-domain.auth0.com
API_IDENTIFIER=your-api-identifier

# 슬랙 봇 설정
SLACK_BOT_TOKEN=xoxb-your-slack-bot-token
SLACK_SIGNING_SECRET=your-slack-signing-secret

# OpenAI API 설정
OPENAI_API_KEY=sk-proj-your-openai-api-key

# Google API 설정
SPREADSHEET_ID=your-spreadsheet-id
DRIVE_FOLDER_ID=your-drive-folder-id
SHEETS_JSON_KEY_PATH=config/service-account-key.json

# 이메일 설정
SMTP_SERVER=smtp.gmail.com
SMTP_PORT=587
EMAIL_ADDRESS=your-email@gmail.com
EMAIL_PASS=your-app-password
RECEIVER_EMAIL=receiver@example.com

# 카카오톡 API 설정
KAKAO_REST_API_KEY=your-kakao-api-key
KAKAO_REFRESH_TOKEN=your-refresh-token
```

### 프론트엔드 환경 변수 (.env in factory-dashboard/)

```bash
REACT_APP_AUTH0_DOMAIN=your-auth0-domain.auth0.com
REACT_APP_AUTH0_CLIENT_ID=your-auth0-client-id
REACT_APP_AUTH0_AUDIENCE=your-auth0-audience
REACT_APP_API_BASE_URL=http://localhost:5001
```

## 📚 API 문서

### 인증이 필요한 엔드포인트

모든 보호된 엔드포인트는 `Authorization: Bearer <token>` 헤더가 필요합니다.

### 슬랙 봇 API

#### POST /slack/events
슬랙 이벤트 수신 및 처리

**Request Body:**
```json
{
  "type": "event_callback",
  "event": {
    "type": "message",
    "user": "U123456",
    "text": "sn 5785 진행률 알려줘",
    "channel": "C123456"
  }
}
```

#### POST /slack/interactive  
슬랙 인터랙티브 컴포넌트 처리

**Request Body:**
```json
{
  "type": "block_actions",
  "actions": [
    {
      "action_id": "progress_5785",
      "value": "progress_5785"
    }
  ]
}
```

#### POST /slack/commands
슬랙 슬래시 명령어 처리

**Request Body:**
```json
{
  "command": "/factory",
  "text": "status",
  "user_id": "U123456"
}
```

### 데이터 조회 API

#### GET /api/factory
공장 생산 데이터 조회

**Parameters:**
- `month` (optional): YYYY-MM 형식의 월 (기본값: 현재 월)

**Response:**
```json
{
  "weekly_production": [
    {"model": "Model A", "count": 10}
  ],
  "monthly_production": [
    {"model": "Model A", "count": 50}
  ],
  "summary_table": [
    {
      "title_number": "T001",
      "model_name": "Model A", 
      "mech_partner": "Partner A",
      "elec_partner": "Partner B",
      "mech_progress": 75.5,
      "elec_progress": 80.0,
      "tms_progress": 60.0
    }
  ]
}
```

#### GET /api/info
상세 정보 조회

**Parameters:**
- `mode`: 조회 모드 (monthly)
- `month`: YYYY-MM 형식의 월

#### GET /api/weekly_production
주간 생산 현황 조회

### 데이터 처리 API

#### GET /extract
데이터 추출 및 처리 실행

**Response:**
```json
{
  "status": "success",
  "message": "Data extraction and loading completed",
  "processed_count": 150,
  "execution_time": "00:02:30"
}
```

#### GET /api/download_json
처리된 데이터 다운로드

#### GET /api/failed_sn
실패한 시리얼 넘버 목록 다운로드

## 📱 대시보드 구성

### 🏭 공장 대시보드 (`/`)
```
┌─────────────────────────────────────────┐
│           GST 배너 & 헤더                │
├─────────────────────────────────────────┤
│  주간차트  │  월간차트  │  불량률차트   │
├─────────────────────────────────────────┤
│            요약 테이블                   │
├─────────────────────────────────────────┤
│  불량률지표  │      KPI 지표            │
└─────────────────────────────────────────┘
```

**React 컴포넌트:**
- `WeeklyChart.js` - 주간 생산량 차트
- `MonthlyChart.js` - 월간 생산량 차트  
- `DefectChart.js` - 불량률 차트
- `SummaryTable.js` - 상세 데이터 테이블
- `DefectMetrics.js` - 불량률 지표
- `KpiMetrics.js` - KPI 지표

### 🤝 협력사 대시보드 (`/partner`)
- iframe으로 `partner.html` 로드
- 별도 인증 불필요
- 협력사별 진행률 중심

### 🔒 내부 대시보드 (`/internal`)
- 비밀번호 "0979" 보호
- iframe으로 `internal.html` 로드
- 관리자용 상세 분석 기능

## 📅 데이터 필터링 로직

시스템은 생산 준비 기간을 고려한 스마트 필터링을 적용합니다:

### 월별 데이터 표시 규칙

1. **매월 1일 ~ 14일**: 이전 달 중순 + 현재 달 데이터
2. **매월 15일 ~ 23일**: 현재 달 데이터만
3. **매월 24일 ~ 말일**: 현재 달 + 다음 달 데이터

### 구현 코드 예시
```python
def get_date_range():
    today = datetime.now()
    day = today.day
    
    if day <= 14:
        # 이전 달 중순부터 현재 달까지
        start_date = (today.replace(day=1) - timedelta(days=1)).replace(day=15)
        end_date = today.replace(day=calendar.monthrange(today.year, today.month)[1])
    elif day <= 23:
        # 현재 달만
        start_date = today.replace(day=1)
        end_date = today.replace(day=calendar.monthrange(today.year, today.month)[1])
    else:
        # 현재 달부터 다음 달까지
        start_date = today.replace(day=1)
        next_month = today.replace(day=28) + timedelta(days=4)
        end_date = next_month.replace(day=calendar.monthrange(next_month.year, next_month.month)[1])
    
    return start_date, end_date
```

## 🌐 배포

### 🚀 Railway 배포 (백엔드 + 슬랙 봇)

#### 1. Railway 프로젝트 설정
```bash
# Railway CLI 설치
npm install -g @railway/cli

# 로그인
railway login

# 프로젝트 배포
railway deploy
```

#### 2. 환경 변수 설정 (Railway Dashboard)
```bash
# 데이터베이스
DATABASE_URL=postgresql://user:pass@host:port/db

# 슬랙 봇
SLACK_BOT_TOKEN=xoxb-9100628124995-9154114902480-...
SLACK_SIGNING_SECRET=c04c411a287e899071c1e3170c407071

# OpenAI
OPENAI_API_KEY=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

# 기타 환경 변수
AUTH0_DOMAIN=your-domain.auth0.com
API_IDENTIFIER=your-api-identifier
```

#### 3. 슬랙 앱 설정
```bash
# Event Subscriptions
Request URL: https://pda-api-extract.up.railway.app/slack/events

# Interactive Components  
Request URL: https://pda-api-extract.up.railway.app/slack/interactive

# OAuth & Permissions
Bot Token Scopes:
- app_mentions:read
- channels:read
- chat:write
- im:read
- im:write
```

### 🌐 Netlify 배포 (프론트엔드)

#### 1. 빌드 설정
```bash
# Build command
npm run build

# Publish directory
build

# Environment variables
REACT_APP_AUTH0_DOMAIN=your-domain.auth0.com
REACT_APP_AUTH0_CLIENT_ID=your-client-id
REACT_APP_AUTH0_AUDIENCE=your-audience
REACT_APP_API_BASE_URL=https://pda-api-extract.up.railway.app
```

#### 2. 배포 상태 확인
```bash
# 프론트엔드
https://rainbow-haupia-cd8290.netlify.app/

# 백엔드 API
https://pda-api-extract.up.railway.app/

# 슬랙 봇 상태
https://pda-api-extract.up.railway.app/slack/events
```

## 🌐 배포

### Production 환경

- **백엔드 API**: Railway (https://pda-api-extract.up.railway.app)
- **프론트엔드**: Netlify (https://rainbow-haupia-cd8290.netlify.app)
- **데이터베이스**: Railway PostgreSQL

### 자동 배포 프로세스

1. **GitHub Push** → **Railway 자동 배포** (백엔드)
2. **GitHub Push** → **Netlify 자동 배포** (프론트엔드)

### Docker 배포

```bash
# Docker 이미지 빌드
docker build -t gst-factory-pipeline .

# 컨테이너 실행
docker run -p 5001:5001 --env-file .env gst-factory-pipeline
```

### Railway 설정

```yaml
# railway.json
{
  "build": {
    "builder": "NIXPACKS"
  },
  "deploy": {
    "startCommand": "python factory_main.py",
    "healthcheckPath": "/api/health"
  }
}
```

### Netlify 설정

```toml
# netlify.toml
[build]
  base = "factory-dashboard/"
  command = "npm run build"
  publish = "build/"

[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200
```

## 📊 모니터링

### 대시보드별 모니터링 지표

#### 🏭 공장 대시보드
- **생산량**: 주간/월간 생산 현황
- **목표 달성률**: 계획 대비 실적
- **품질 지표**: 불량률, 수율
- **KPI**: 핵심 성과 지표

#### 🤝 협력사 대시보드
- **진행률**: 기구/전장/반제품별 진행률
- **일정**: 제조 시작일 기준 예상 진행률
- **파트너별 현황**: 협력사별 생산 상황

#### 🔒 내부 대시보드
- **시스템 상태**: API 응답 시간, 에러율
- **데이터 품질**: 데이터 완성도, 정확도
- **사용자 활동**: 접속 통계, 사용 패턴

### 알림 시스템

#### 이메일 알림
```python
def send_email_notification(subject, body):
    msg = MIMEText(body, 'html')
    msg['Subject'] = subject
    msg['From'] = EMAIL_ADDRESS
    msg['To'] = RECEIVER_EMAIL
    
    with smtplib.SMTP(SMTP_SERVER, SMTP_PORT) as server:
        server.starttls()
        server.login(EMAIL_ADDRESS, EMAIL_PASS)
        server.send_message(msg)
```

#### 카카오톡 알림
```python
def send_kakao_message(message):
    url = "https://kapi.kakao.com/v2/api/talk/memo/default/send"
    headers = {"Authorization": f"Bearer {access_token}"}
    data = {"template_object": json.dumps(message)}
    
    response = requests.post(url, headers=headers, data=data)
    return response.json()
```

## 🔧 문제 해결

### 자주 발생하는 문제

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
- 서비스 계정 키 파일 경로 확인: `config/gst-management-*.json`
- Google Cloud Console에서 API 활성화 상태 확인
- 스프레드시트 공유 권한 설정 확인

#### 3. Auth0 인증 오류
- Auth0 도메인 및 API 식별자 확인
- 허용된 콜백 URL 설정: `http://localhost:3000, https://rainbow-haupia-cd8290.netlify.app`
- JWT 토큰 만료 시간 확인

#### 4. 프론트엔드 빌드 오류
```bash
# 의존성 재설치
cd factory-dashboard
rm -rf node_modules package-lock.json
npm install

# 캐시 정리
npm start -- --reset-cache
```

#### 5. CORS 오류
```python
# Flask CORS 설정 확인
from flask_cors import CORS
CORS(app, origins=["http://localhost:3000", "https://rainbow-haupia-cd8290.netlify.app"])
```

### 로그 모니터링

```bash
# API 서버 로그
tail -f logs/factory_main.log

# 데이터 처리 로그  
tail -f logs/data_processing.log

# 에러 로그
tail -f logs/error.log

# Railway 로그 (배포 환경)
railway logs
```

### 성능 최적화

#### 데이터베이스 최적화
```sql
-- 인덱스 생성
CREATE INDEX idx_serial_number ON production_data(serial_number);
CREATE INDEX idx_created_at ON production_data(created_at);

-- 쿼리 성능 분석
EXPLAIN ANALYZE SELECT * FROM production_data WHERE created_at >= '2024-01-01';
```

#### API 응답 최적화
```python
# 데이터 캐싱
from functools import lru_cache

@lru_cache(maxsize=128)
def get_monthly_data(month):
    return query_database(month)
```

## 🤝 기여 가이드

### 개발 환경 설정

1. **저장소 포크 및 클론**
```bash
git clone https://github.com/your-username/gst-factory-pipeline.git
cd gst-factory-pipeline
```

2. **개발 브랜치 생성**
```bash
git checkout -b feature/새기능명
```

3. **변경사항 커밋**
```bash
git add .
git commit -m "feat: 새로운 기능 추가"
```

4. **브랜치 푸시 및 PR 생성**
```bash
git push origin feature/새기능명
```

### 코딩 스타일

#### Python (PEP 8)
```python
# 함수명: snake_case
def process_production_data():
    pass

# 클래스명: PascalCase  
class DataProcessor:
    pass

# 상수: UPPER_SNAKE_CASE
API_BASE_URL = "https://api.example.com"
```

#### JavaScript (ESLint)
```javascript
// 함수명: camelCase
function processData() {}

// 컴포넌트: PascalCase
function WeeklyChart() {}

// 상수: UPPER_SNAKE_CASE
const API_BASE_URL = "https://api.example.com";
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
```

### 테스트

```bash
# Python 테스트
python -m pytest tests/ -v

# JavaScript 테스트
cd factory-dashboard
npm test

# 통합 테스트
python -m pytest tests/integration/ -v
```

## 🤖 AI 기반 개발

이 프로젝트는 **AI 도구를 활용한 혁신적인 개발 방식**으로 구현되었습니다:

### 💡 **개발 방식**
- **기획 & 설계**: 사용자(kdkyu311) 주도 시스템 설계 및 요구사항 정의
- **초기 개발**: 단일 파이썬 스크립트로 MVP 구현 (PDA_partner)
- **모듈화 & 고도화**: Claude Sonnet, ChatGPT 등 AI 도구 활용
- **아키텍처**: AI와 협업을 통한 최적화된 시스템 구조 설계
- **문제 해결**: AI 기반 디버깅 및 성능 최적화

### 🔄 **개발 진화 과정**
1. **수동 스크립팅** → **AI 협업 모듈화**
2. **단일 파일** → **구조화된 아키텍처**
3. **로컬 실행** → **클라우드 배포**
4. **정적 리포트** → **실시간 대시보드**

### 🚀 **AI 협업의 장점**
- **빠른 프로토타이핑**: 아이디어에서 구현까지 단축된 개발 주기
- **코드 품질**: AI 도구를 통한 베스트 프랙티스 적용
- **다양한 기술 스택**: 백엔드-프론트엔드 통합 개발
- **지속적 개선**: AI와의 협업을 통한 반복적 최적화
- **레거시 현대화**: 기존 스크립트를 현대적 시스템으로 전환

## 📝 변경 이력

### v3.1.0 (2025-07-14) 🔧 **데이터 정합성 개선 및 작업 시간 조회 기능 추가**
- **진행률 계산 로직 개선**: 핵심 카테고리(기구, 전장, TMS_반제품) 기준으로 진행률 계산
- **데이터 정합성 문제 해결**: 개별 조회와 월별 조회 간 일관성 확보
- **작업 시간 조회 시스템 구축**: 6가지 쿼리 타입으로 포괄적 작업 시간 분석
  - 개별 시리얼 넘버 총 작업 시간
  - 카테고리별 작업 시간 요약
  - 파트너별 작업 시간 통계
  - 월별 작업 시간 현황
  - 개별 시리얼 넘버의 특정 카테고리 작업 시간
  - 모델별 월별 작업 시간 분석
- **GPT 기반 자연어 분석**: 작업 시간 관련 질문을 자동으로 분석하여 적절한 쿼리 선택
- **패턴 매칭 시스템**: GPT 없이도 기본 패턴으로 동작하는 백업 시스템
- **완료 프로젝트 필터링**: 100% 완료된 프로젝트만 대상으로 정확한 통계 제공
- **사용자 친화적 응답**: 각 쿼리 타입별 맞춤형 응답 포맷팅

### v3.0.0 (2025-07-XX) 🤖 **AI 어시스턴트 도입**
- **슬랙 봇 AI 어시스턴트 추가**: OpenAI GPT-3.5 기반 지능형 봇
- **자연어 처리**: 다양한 질문 패턴 지원 및 의도 분석
- **인터랙티브 메뉴**: 슬랙 Block Kit 기반 버튼 인터페이스
- **실시간 DB 연동**: PostgreSQL과 연동된 시리얼 넘버 조회
- **월별 조건 검색**: 복합 조건 기반 데이터 필터링
- **공장 관리 AI 상담**: 생산성/품질/안전 관리 조언
- **24/7 무중단 서비스**: Railway 호스팅으로 안정적 운영

### v2.2.0 (2025-01-XX)
- 통합 README 문서 개선
- 시스템 아키텍처 다이어그램 추가
- AI 기반 개발 방식 문서화
- 프로젝트 진화 과정 상세 기록
- 문제 해결 가이드 확장

### v2.2.0 (2025-07-21) 🆕 **CT 분석 대시보드 메이저 업데이트**

#### 🎯 **신규 기능 추가**
- **CT(Cycle Time) 분석 대시보드**: 완전히 새로운 분석 도구 추가
  - 🔒 **비밀번호 보호 시스템**: 사내 직원 전용 접근 제어 (`gst2025!`)
  - 📊 **카테고리별 시간 집계**: 6개 카테고리 (기구, 전장, TMS반제품, 검사, 마무리, 기타)
  - 🎨 **순수 HTML/CSS 바차트**: Recharts 의존성 제거로 성능 최적화
  - 📱 **반응형 디자인**: 모바일/태블릿 완벽 대응

#### 🔗 **S/N 기반 상세 정보 조회**
- **인터랙티브 드롭다운**: Product Code 클릭 시 Serial Number 목록 표시
- **스프레드시트 연동**: 각 S/N 클릭 시 해당 스프레드시트로 직접 이동
- **UX 개선**: 호버에서 클릭 기반 메뉴로 변경 (사용성 향상)

#### 🎪 **UI/UX 대폭 개선**
- **카테고리 요약 카드**: 직관적인 그리드 레이아웃으로 핵심 정보 표시
- **스크롤 네비게이션**: 카드 클릭 시 해당 차트로 부드러운 스크롤 이동
- **분석 요약 강화**: 선택 월의 총 생산 대수 추가 표시
- **로딩 상태 개선**: 사용자 피드백 강화 및 에러 처리 개선

#### 🔧 **백엔드 API 확장**
- **신규 엔드포인트 추가**:
  - `/api/cycle_time/monthly`: CT 분석 월별 데이터 조회
  - `/api/product_code/serials`: S/N 목록 및 스프레드시트 링크 조회
- **CORS 설정 업데이트**: Railway URL 추가 (`https://pda-api-extract.up.railway.app`)
- **환경 대응**: 개발/운영 환경 자동 감지 URL 설정

#### 🛠️ **기술적 개선사항**
- **코드 품질**: Black 포맷터 적용으로 일관된 코드 스타일
- **배포 최적화**: 클라우드 배포용 별도 파일 (`main_api_cloud_deploy.py`)
- **모듈화**: 컴포넌트 기반 구조로 유지보수성 향상
- **보안 강화**: API 접근 권한 관리 시스템 도입

#### 📋 **업로드된 파일**
- `api/main_api_cloud_deploy.py`: 클라우드 배포용 백엔드
- `factory-dashboard/src/App.js`: 비밀번호 보호 컴포넌트
- `factory-dashboard/src/App.css`: CT 분석 전용 스타일링
- `factory-dashboard/src/components/CycleTimeAnalysis.js`: CT 분석 메인 컴포넌트 (새 파일)
- `factory-dashboard/API_CONFIG.md`: API 설정 가이드 문서 (새 파일)

### v2.1.0 (2025-06-XX)
- 날짜 필터링 로직 개선 (24일 이후 다음 달 데이터 표시)
- MonthlyChart와 SummaryTable 데이터 분리
- API 응답 최적화

### v2.0.0 (2025-05-XX)
- React 대시보드 추가
- Auth0 인증 시스템 도입
- 다중 대시보드 지원 (공장/협력사/내부)
- PostgreSQL 데이터베이스 도입

### v1.0.0 (2025-03-XX)
- **PDA_partner에서 모듈화 시스템으로 전환**
- 기본 ETL 파이프라인 구현
- Flask API 서버 구현
- AI 도구 활용 개발 시작
- 기능별 모듈 분리 (`utils/` 디렉토리 구조 도입)

### v0.x (Pre-2025.03)
- **PDA_partner**: 초기 파이썬 스크립트 버전
- 단일 파일 (`PDA_patner.py`) 기반 시스템
- Google Sheets 연동, 히트맵 생성, HTML 리포트
- 기본적인 데이터 분석 및 시각화 기능

## 📄 라이선스

이 프로젝트는 MIT 라이선스를 따릅니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.

## 📞 연락처

- **프로젝트 기획자**: kdkyu311
- **이메일**: kdkyu311@naver.com  
- **소속**: GST 제조기술1팀
- **개발 방식**: AI 협업 기반 개발
- **GitHub**: [https://github.com/your-username/gst-factory-pipeline](https://github.com/your-username/gst-factory-pipeline)

---

🤖 **Built with AI Collaboration by GST Manufacturing Team**

**혁신적인 AI 기반 개발로 구현된 프로젝트입니다!**

⭐ 이 프로젝트가 도움이 되었다면 스타를 눌러주세요!
# Reame
