using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProvaMold
{
    internal class Program
    {
        static void Main(string[] args)
        {

            int z = 1;

            for (int i = 1; i < 6; i++)
            {
                for (int y = 1; y < 11; y++)
                {
                    Console.WriteLine($"{z} X {y} = {i * y}");
                }

                Console.WriteLine();
                z = z + 1;
            }


            Console.ReadKey();
        }
    }
}
