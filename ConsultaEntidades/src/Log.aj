



public aspect Log {
    

    pointcut iniciar():execution(void verificarSesion*(..));
    pointcut producto():execution(void Producto.llenarPane*(..));
    pointcut cliente():execution(void Clientes.llenarPane*(..));
    
    pointcut Ccliente():execution(void Clientes.consultar*(..));
    
    pointcut Cproducto():execution(void Producto.consultar*(..));

    
    //Advices para escribir en el documento luego de: realizar la transacción, retirar dinero o crear un usuario

    after() : Ccliente(){
    	System.out.println("Iniciar Secion");
    	IniciarSesion.initialize();
       
    }
    
    
    after() : Cproducto(){
    	System.out.println("Iniciar Secion");
    	IniciarSesion.initialize();
       
    }
    
    
    after() : iniciar(){
    	System.out.println("Secion Correctamente Iniciada");
       
    }
    after() : producto(){
    	System.out.println("Producto Consultado Correctamente ");
    }
    after() : cliente(){
    	System.out.println("Cliente Consultado Correctamente");
        
    }






}