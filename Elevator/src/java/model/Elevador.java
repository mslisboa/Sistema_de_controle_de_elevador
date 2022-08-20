package model;

public class Elevador {
    private int id;
    private int andar_atual;
    private int total_andares;
    private int capacidade;
    private String fabricante;
    private String descricao;
    private int quantidade_pessoas;
    private int pessoas;
    
    public void inicializa(int capacidade, int total_andares){
        this.capacidade = capacidade;
        this.total_andares = total_andares;
    }
    
    public int getId(){
        return this.id;
    }
    
    public void setId(int id){
        this.id = id;
    }
    
    public int getAndarAtual(){
        return this.andar_atual;
    }
    
    public void setAndarAtual(int andar_atual){
        this.andar_atual = andar_atual;
    }
    
    public int getTotalAndares(){
        return this.total_andares;
    }
    
    public void setTotalAndares(int total_andares){
        this.total_andares = total_andares;
    }
    
    public int getCapacidade(){
        return this.capacidade;
    }
    
    public void setCapacidade(int capacidade){
        this.capacidade = capacidade;
    }
    
    public String getDescricao(){
        return this.descricao;
    }
    
    public void setDescricao(String descricao){
        this.descricao = descricao;
    }
    
    public String getFabricante(){
        return this.fabricante;
    }
    
    public void setFabricante(String fabricante){
        this.fabricante = fabricante;
    }
    
    public int getPessoas(){
        return this.pessoas;
    }
    
    public void setPessoas(int pessoas){
        this.pessoas = pessoas;
    }
    
    public void entraElevador(){
        if(this.quantidade_pessoas < this.capacidade){
            this.quantidade_pessoas++;
        }
    }
    
    public void saiElevador(){
        if(this.quantidade_pessoas > 0){
            this.quantidade_pessoas--;
        }
    }
    
    public void sobeElevador(){
        if(this.andar_atual < this.total_andares){
            this.andar_atual++;
        }
    }
    
    public void desceElevador(){
        if(this.andar_atual > 0){
            this.andar_atual--;
        }
    }
    
    /*
    public int movimentaElevador(int andar_destino){
        if(andar_destino >= 0 && andar_destino <= (this.total_andares - 1)){
            while(this.andar_atual != andar_destino){
                if(this.andar_atual < andar_destino){
                    sobeElevador();
                }
                
                else if(this.andar_atual > andar_destino){
                    desceElevador();
                }
            }
        }
        
        return andar_destino;
    }
    */
}