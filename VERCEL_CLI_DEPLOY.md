# Деплой через Vercel CLI (альтернатива Dashboard)

Если Dashboard Vercel недоступен, можно задеплоить через командную строку.

## Установка Vercel CLI

```powershell
npm install -g vercel
```

## Вход в Vercel

```powershell
vercel login
```

Откроется браузер для авторизации.

## Деплой проекта

```powershell
# Первый деплой (интерактивный)
vercel

# Последующие деплои (быстрый)
vercel --prod
```

## Настройка переменных окружения через CLI

```powershell
# Добавить переменную окружения
vercel env add BOT_TOKEN production

# Просмотреть переменные
vercel env ls
```

## Просмотр деплоев

```powershell
# Список деплоев
vercel ls

# Информация о проекте
vercel inspect
```

## Преимущества CLI

- Работает даже при проблемах с Dashboard
- Быстрее для повторных деплоев
- Можно автоматизировать через CI/CD
