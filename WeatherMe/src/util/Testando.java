package util;

import java.io.IOException;

public class Testando {

	public static void main(String[] args) {
		try {
			RequestAPI ra = new RequestAPI("itaquaquecetuba,sp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
