CREATE TABLE IF NOT EXISTS public.expenses (
    id SERIAL PRIMARY KEY,
    category_id INTEGER NOT NULL REFERENCES categories(id),
    amount DECIMAL(10, 2) NOT NULL, -- Сумма с точкой, максимум 10 цифр, 2 знака после запятой
    expense_date TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP NOT NULL -- Дата с точностью до миллисекунды
);


COMMENT ON TABLE public.expenses IS 'Таблица трат';
COMMENT ON COLUMN public.expenses.id IS 'Id траты';
COMMENT ON COLUMN public.expenses.category_id IS 'Категория';
COMMENT ON COLUMN public.expenses.expense_date IS 'Дата траты';

