package org.douggschwind.games;

/**
 * Простой калькулятор для демонстрации тестов
 */
public class Calculator {
    
    /**
     * Складывает два числа.
     * @param a первое число
     * @param b второе число  
     * @return сумма a и b
     */
    public int add(int a, int b) {
        return a + b;
    }
    
    /**
     * Вычитает b из a.
     * @param a уменьшаемое
     * @param b вычитаемое
     * @return разность a и b
     */
    public int subtract(int a, int b) {
        return a - b;
    }
    
    /**
     * Умножает два числа.
     * @param a первый множитель
     * @param b второй множитель
     * @return произведение a и b
     */
    public int multiply(int a, int b) {
        return a * b;
    }
    
    /**
     * Делит a на b.
     * @param a делимое
     * @param b делитель
     * @return результат деления a на b
     * @throws IllegalArgumentException если b равно 0
     */
    public double divide(int a, int b) {
        if (b == 0) {
            throw new IllegalArgumentException("Cannot divide by zero");
        }
        return (double) a / b;
    }
    
    /**
     * Проверяет, является ли число положительным.
     * @param number проверяемое число
     * @return true если число положительное, иначе false
     */
    public boolean isPositive(int number) {
        return number > 0;
    }
}
