package util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import model.Cliente;

public class EnviarEmail {
	
	public static void novoUsuario(Cliente cliente) {
		String msgClienteCadastro = "Bem vindo "+cliente.getNome()+" a Weather.Me agradecemos pelo seu login, no nosso site você pode realizar consultas meteorológicas, "
				+ "informando o seu ponto inicial e seu destino final\n A equipe JERDAM esta muito feliz em saber que temos um novo usuario em nosso site.";
		
		enviarEmail(cliente, msgClienteCadastro);
	}
	
	public static void consultaUsuario(Cliente cliente, RequestAPI cidade, RequestAPI destino) {

		String msgClienteConsulta = "Olá "+cliente.getNome()+
				", aqui esta suas informações, de uma boa olhada antes de sair de casa, evite surpresas .\nSeu ponto de partida é : "
				+cidade.getNome()+" esta com temperatura de "+cidade.getTemp()+"º, a previsão para a minima é "
				+cidade.getMin()+" e a maxima "+cidade.getMax()+", a descrição para essa dia é "+cidade.getDescricao()
				+", dados coletados na data"+cidade.getData()+" no horario "+cidade.getHora()+".\n\n";
		if(destino != null) {
			msgClienteConsulta += "Seu destino :"  
					+destino.getNome()+" esta com temperatura de"+destino.getTemp()+"º, a previsão para a minima é " 
					+destino.getMin()+" e a maxima "+destino.getMax()+", a descrição para essa dia é "+destino.getDescricao()
					+", dados coletados na data"+destino.getData()+" no horario "+destino.getHora()+".\n\n";
	
		}
		msgClienteConsulta += "A Weather.Me agradeçe por utilizar nossos serviços, esperamos que as informações que lhe mandamos tenha sido de grande ajuda";
		
		enviarEmail(cliente, msgClienteConsulta);
	}
	
	
	
	public static void enviarEmail(Cliente cliente, String msg) {
		
		Properties props = new Properties();
        /** Par�metros de conex�o com servidor Hotmail */
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.host", "smtp.outlook.com");
        //props.put("mail.smtp.host", "smtp.office365.com");
        props.put("mail.smtp.socketFactory.port", "587");
        props.put("mail.smtp.socketFactory.fallback", "false");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        //props.put("mail.smtp.port", "587");
        props.put("mail.smtp.port", "587");
        Session session = Session.getDefaultInstance(props,
                    new javax.mail.Authenticator() {
                         protected PasswordAuthentication getPasswordAuthentication()
                         {
                        	 //Login padrao que sera usado para enviar os emails
                               return new PasswordAuthentication("WeatherNotificacao@hotmail.com", "weather123");
                         }
                    });

        /** Ativa Debug para sess�o */
        session.setDebug(true);

        try {

              Message message = new MimeMessage(session);
              message.setFrom(new InternetAddress("WeatherNotificacao@hotmail.com")); //Remetente
              message.setRecipients(Message.RecipientType.TO,
                                InternetAddress.parse(cliente.getEmail())); //Destinat�rio(s)
              message.setSubject("Weather.Me Informa - Clima do dia");//Assunto
           // Essa parte � a mensagem do clima que vai ser mandada para o usuario
           // Que no momento tamo mandando so a cidade porque � o parametro que o api de tempo pede
              message.setText(msg);
              //M�todo para enviar a mensagem criada/
              Transport.send(message);

              System.out.println("Feito!!!");

         } catch (MessagingException e) {
              throw new RuntimeException(e);
        }
		
	}
	
	
}
