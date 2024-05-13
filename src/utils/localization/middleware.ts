import { createI18nMiddleware } from 'next-international/middleware';

export const I18nMiddleware = createI18nMiddleware({
  locales: ['en', 'fr'],
  defaultLocale: 'en',
  urlMappingStrategy: 'rewrite',
});
