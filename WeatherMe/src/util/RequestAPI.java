package util;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;

public class RequestAPI {

	private String nome, temp, data, hora, descricao, max, min; 


	public  RequestAPI(String cidade) throws IOException {
		URL url = new URL("https://api.hgbrasil.com/weather?key=466169bb&city_name="+cidade);
		InputStream is = url.openStream();
		InputStreamReader isr = new InputStreamReader(is);
		BufferedReader br = new BufferedReader(isr);
		String linha = br.readLine();

		while (linha != null) {
			String[] msgRecebida = linha.split(",");
			for(int i = 0; i < msgRecebida.length; i++ ) {
				System.out.println("Linha:"+i+"// "+msgRecebida[i]);
			}
			String[] n = msgRecebida[9].split(":");
			nome = n[1]+","+msgRecebida[10];	
			String[] t  = msgRecebida[2].split(":");
			temp = t[2];
			String[] d = msgRecebida[3].split(":");
			data = d[1];
			String[] h = msgRecebida[4].split(":");
			hora = h[1]+":"+h[2];
			String[] dc = msgRecebida[6].split(":");
			descricao = dc[1];
			linha = br.readLine();
			String[] mx = msgRecebida[20].split(":");
			max = mx[1];
			String[] mn = msgRecebida[21].split(":");
			min = mn[1];
		}

	}
	
	public String getNome() {
		return nome;
	}
	
	public String getTemp() {
		return temp;
	}
	
	public String getData() {
		return data;
	}
	
	public String getHora() {
		return hora;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	public String getMax() {
		return max;
	}
	
	public String getMin() {
		return min;
	}


}
