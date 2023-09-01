using Amazon.Lambda.Core;
using System.Collections.Generic;

// Assembly attribute to enable the Lambda function's JSON input to be converted into a .NET class.
[assembly: LambdaSerializer(typeof(Amazon.Lambda.Serialization.SystemTextJson.DefaultLambdaJsonSerializer))]

namespace sample_dotnet_app;

public class Function
{

    /// <summary>
    /// A simple function that takes a string and does a ToUpper
    /// </summary>
    /// <param name="input"></param>
    /// <param name="context"></param>
    /// <returns></returns>
    public Dictionary<string, string> FunctionHandler(Dictionary<string, string> input, ILambdaContext context)
    {
        return new Dictionary<string, string> { { "message", input["key1"].ToUpper() } };
    }

}
