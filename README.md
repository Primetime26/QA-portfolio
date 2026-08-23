# Роман Отряков — QA Engineer

QA Engineer с опытом тестирования web-приложений. Проверяю пользовательские сценарии, REST API и данные в БД; составляю понятную тестовую документацию и воспроизводимые баг-репорты. Развиваюсь в автоматизации тестирования на Java.

[![API tests](https://github.com/Primetime26/qa-portfolio/actions/workflows/api-tests.yml/badge.svg)](https://github.com/Primetime26/qa-portfolio/actions/workflows/api-tests.yml)

## Что я умею

| Направление | Навыки и инструменты |
| --- | --- |
| Тестирование | функциональное, регрессионное, smoke, exploratory, позитивное и негативное |
| Тест-дизайн | классы эквивалентности, граничные значения, таблицы решений |
| API | Postman, REST, HTTP, JSON, методы GET / POST / PUT / PATCH / DELETE |
| Данные | SQL: SELECT, WHERE, JOIN; PostgreSQL, MySQL |
| Web | Chrome DevTools, HTML, CSS, кросс-браузерные проверки |
| Инструменты | Git, GitHub, GitLab, Linux, Chrome DevTools |
| В развитии | Java, ООП, автоматизация тестирования |

## Демонстрационный проект

В репозитории представлен учебный проект тестирования каталога товаров [DummyJSON](https://dummyjson.com/docs/products). Это публичный тестовый REST API: операции изменения данных имитируются и не сохраняются на сервере.

| Артефакт | Что демонстрирует |
| --- | --- |
| [Обзор проекта](docs/project-overview.md) | объект, границы и допущения тестирования |
| [Тест-план](docs/test-plan.md) | стратегия, риски и критерии завершения |
| [Тест-дизайн](docs/test-design.md) | классы эквивалентности и граничные значения |
| [Чек-лист](docs/checklist.md) | функциональные, негативные и нефункциональные проверки |
| [Тест-кейсы](docs/test-cases.md) | подробные сценарии с ожидаемым результатом |
| [Баг-репорты](docs/bug-reports.md) | примеры оформления дефектов без выдачи их за найденные в сервисе |
| [Postman-коллекция](postman/DummyJSON.postman_collection.json) | автоматизированные API-проверки CRUD и негативных сценариев |
| [SQL-запросы](docs/sql/README.md) | проверка данных каталога и заказов на уровне БД |
| [GitHub Actions](.github/workflows/api-tests.yml) | запуск Postman/Newman при push и pull request |

### Запуск API-тестов

Нужен Node.js 20+.

```bash
npx --yes newman@6.2.1 run postman/DummyJSON.postman_collection.json \
  -e postman/local.postman_environment.json
```

Ожидаемый результат: все запросы и проверки завершаются успешно. API публичный, поэтому временные сетевые ошибки внешнего сервиса не являются дефектами коллекции.

Контрольный прогон от 23.08.2026: **7/7 запросов и 16/16 проверок пройдены**, среднее время ответа — 351 мс.

## Контакты

- Email: [lizent.club@yandex.ru](mailto:lizent.club@yandex.ru)
- Telegram: [@RomashkaTL](https://t.me/RomashkaTL)
- GitHub: [Primetime26](https://github.com/Primetime26)


---

> Репозиторий развивается: следующие шаги — UI-автотесты на Java, отчёты Allure и отдельный проект нагрузочного тестирования.
