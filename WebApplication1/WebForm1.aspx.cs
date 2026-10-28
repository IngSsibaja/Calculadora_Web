using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        float n1 = 0, n2 = 0, resultado= 0; //Valores globales de todo el código

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void asignar_valores()
        {
            float.TryParse(Tnum1.Text, out n1);
            float.TryParse(Tnum2.Text, out n2);
        }

        protected void rsuma_CheckedChanged(object sender, EventArgs e)
        {

        }

        private float radioButton() //Se define la operación que se realiza según el que esté elegido
        {
            if (rsuma.Checked)
            {
                resultado = n1 + n2;
            }
            else if (rresta.Checked)
            {
                resultado = n1 - n2;
            }
            else if (rmulti.Checked)
            {
                resultado = n1 * n2;
            }
            else if (rdivision.Checked)
            {
                resultado = n1 / n2;
            }
            else if (rexponente.Checked)
            {
                resultado = (float)Math.Pow(n1, n2);
            }
            else if (rpotenciade2.Checked)
            {
                n2= 2;
                resultado = (float)Math.Pow(n1, n2);
                
            }
            else if (r10_a_la_x.Checked)
            {
                n2= 10;
                resultado = n1 * n2;
            }
            return resultado;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            asignar_valores();
            Lresultado.Text = radioButton().ToString(); //Se asigna el resultado que hay en el método para el resultado principal
            if (rpotenciade2.Checked)
            {
                Tnum2.Text = "2"; //Se asigna el valor de 2 a la caja de texto 2 automáticamente
            }
            else if (r10_a_la_x.Checked)
            {
                Tnum2.Text = "10"; //Se asigna el valor de 10 a la caja de texto 2 automáticamente
            }
        }
    }
}