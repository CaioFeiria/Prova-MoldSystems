using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProvaMoldSalario
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite as horas trabalhadas: ");
            double HorasTrab = int.Parse(Console.ReadLine());

            if (HorasTrab == 160) 
            { 
                Console.WriteLine("Não tem direito a horas extras.");

                Console.ReadKey();
            }
            else
            {
                Console.Write("Digite seu salario por horas trabalhadas: ");
                double salario = int.Parse(Console.ReadLine());

                if (HorasTrab > 160)
                {
                    double extra = HorasTrab + (HorasTrab / 2);

                    salario = salario * extra;

                    Console.WriteLine($"Seu salario é: {salario}");

                    Console.ReadKey();
                }
            }
        }   
    }
}
