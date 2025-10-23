-- Таблица категорий трат
CREATE TABLE IF NOT EXISTS public.categories (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

COMMENT ON TABLE public.categories IS 'Таблица категорий трат';
COMMENT ON COLUMN public.categories.id IS 'Id категории';
COMMENT ON COLUMN public.categories.title IS 'Описание категории';