using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;

namespace MoviesMais.Models
{
    public class Contato
    {
        public string Nome { get; set; }
        public string Telefone { get; set; }
        public string Email { get; set; }
        public string Mensagem { get; set; }

        public void EnviarEmail()
        { 
            SmtpClient smtp = new SmtpClient(); //Enviar email
            
            smtp.Host = "smtp.gmail.com"; //Endereço do servidor de email
            smtp.Port = 587; //Porta utilizada para o envio de email
            smtp.EnableSsl = true; //Usa criptografia ou não
            smtp.UseDefaultCredentials = false; //Usa o email do usuário logado na maquina ou não
            smtp.Credentials = new System.Net.NetworkCredential("henrique.polsani@gmail.com", DadosSensiveis.SENHA_EMAIL); //Email destino, para efeito de autenticação

            MailMessage mail = new MailMessage(); //Mensagem de email

            mail.From = new System.Net.Mail.MailAddress(Email); //Email do cara que esta preenchendo o formulario
            mail.To.Add(new System.Net.Mail.MailAddress("henrique.polsani@gmail.com")); //Email do dono do site
            mail.Subject = "Contato site"; //Assunto
            mail.IsBodyHtml = true; //O corpo da mensagem é html ou não
            mail.Body = Nome + "<br />" + Telefone + "<br />" + Mensagem; //Mensagem que vai ser enviada
 
            smtp.Send(mail);
        }
    }
}