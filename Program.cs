using System;

namespace console_hello_world_docker;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Hello, World!");
        Console.WriteLine($"args: {string.Join(",", args)}");
        Console.WriteLine($"args_env: {Environment.GetEnvironmentVariable("ARGS")}");
    }
}
