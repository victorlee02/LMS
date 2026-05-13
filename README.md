# LMS (Learning Management System)

한국외국어대학교 eClass를 참고하여 설계한 학습 관리 시스템입니다.

## 기술 스택

- **Backend**: Django 6.0.5
- **Database**: MySQL
- **Language**: Python 3.13

## 프로젝트 구조

```
LMS/
├── accounts/       # 사용자, 학과
├── courses/        # 강좌, 과목, 수강신청, 강의계획서
├── assignments/    # 과제, 제출
├── teams/          # 팀프로젝트, 팀, 팀원, 팀제출
├── contents/       # 강의자료, 공지사항
├── config/         # Django 설정
├── sql/
│   └── schema.sql  # DB 스키마
└── manage.py
```

## 도메인별 테이블

| 앱 | 테이블 |
|----|--------|
| accounts | Users, Departments |
| courses | Courses, Subjects, Enrollments, Syllabuses |
| assignments | Assignments, Submissions |
| teams | TeamProjects, Teams, TeamMembers, TeamSubmissions |
| contents | CourseContents |

## 시작하기

### 1. 저장소 클론

```bash
git clone https://github.com/victorlee02/LMS.git
cd LMS
```

### 2. 가상환경 생성 및 활성화

```bash
python -m venv venv

# Windows (Git Bash)
source venv/Scripts/activate

# Mac / Linux
source venv/bin/activate
```

### 3. 패키지 설치

```bash
pip install -r requirements.txt
```

### 4. MySQL DB 생성

MySQL에 접속 후 아래 명령어 실행:

```sql
CREATE DATABASE lms CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

그리고 `config/settings.py`에서 본인 MySQL 비밀번호 입력:

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'lms',
        'USER': 'root',
        'PASSWORD': '본인 비밀번호 입력',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}
```

### 5. 서버 실행

```bash
python manage.py migrate
python manage.py runserver
```

## 팀원

| 이름 | GitHub |
|------|--------|
| 팀장 | [@victorlee02](https://github.com/victorlee02) |
