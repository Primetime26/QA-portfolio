# Как опубликовать портфолио

## 1. Создайте репозиторий

На GitHub создайте пустой публичный репозиторий `qa-portfolio`. Не добавляйте через интерфейс README, `.gitignore` или лицензию — они уже есть локально.

## 2. Выполните команды из папки проекта

```bash
git init
git add README.md HOW_TO_PUBLISH.md docs postman .github .gitignore
git commit -m "Create QA engineer portfolio"
git branch -M main
git remote add origin https://github.com/Primetime26/qa-portfolio.git
git push -u origin main
```

Если `origin` уже существует, вместо `git remote add` используйте:

```bash
git remote set-url origin https://github.com/Primetime26/qa-portfolio.git
```

## 3. Проверьте после публикации

- Главная страница README корректно отображается.
- Вкладка **Actions** содержит workflow `API tests`.
- Первый запуск workflow завершён успешно.
- Badge в README стал зелёным.
- Email и Telegram указаны верно.

## 4. Сделайте портфолио заметным

1. На странице репозитория добавьте темы: `qa`, `qa-engineer`, `manual-testing`, `api-testing`, `postman`, `sql`, `portfolio`.
2. Закрепите репозиторий в профиле GitHub через **Customize your pins**.
3. Добавьте ссылку на репозиторий в резюме и отклики.
4. Для каждого нового проекта создавайте отдельную папку или репозиторий с кратким README: задача, подход, артефакты, запуск и результат.

## 5. Что добавить следующим

- Реальный обезличенный кейс из опыта без данных работодателя.
- UI-автотесты на Java + JUnit 5 + REST Assured/Selenide.
- Allure-отчёт и GitHub Pages.
- Небольшой проект нагрузочного тестирования в k6 или JMeter.

Не публикуйте внутренние URL, токены, персональные данные пользователей, логи или скриншоты коммерческих систем.
