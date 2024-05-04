public String tabla(int numero, arrayList<Boolean> listado) {       // Sintáctico: Es ArrayList.
    String result = null;
    for(i = 1; i < 11; i--) {                                       /* 
                                                                    Lógico: Loop infinito.
                                                                    Semántico: La variable "i" no está
                                                                    declarada. Detectado en Compilación.
                                                                    */ 
        result += numero + "x" + i + "=" + (i*numero) + "\n";       /*
                                                                    Semántico: Concatenación de null en la
                                                                    cadena. Detectado en Compilación.
                                                                    */ 
        listado.get(listado.size()-1)=(BOOLEAN) numero>i;           /*
                                                                    Sintáctico: El lado izquierdo de la
                                                                    asignación debe ser una variable.
                                                                    Sintáctico: "BOOLEAN" no existe, debería
                                                                    ser Boolean o boolean.
                                                                    */
    }
    return true;                                                    /*
                                                                    Semántico: Error de tipo en el return. 
                                                                    Detectado en Compilación.
                                                                    */
}