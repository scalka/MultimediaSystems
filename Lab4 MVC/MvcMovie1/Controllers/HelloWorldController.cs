using Microsoft.AspNetCore.Mvc;
using System.Text.Encodings.Web;

namespace MvcMovie.Controllers
{
    public class HelloWorldController : Controller
    {
        // 
        // GET: /HelloWorld/
        // index is default method0
        public IActionResult Index()
        {
            return View();
        }

        // 
        // GET: /HelloWorld/Welcome/ 

        public IActionResult Welcome(string name, int numTimes = 1)
        {
            //UsesHtmlEncoder.Default.Encode to protect the app from malicious input (namely JavaScript).
            //return HtmlEncoder.Default.Encode($"Hello {name}, ID: {ID}");


            //In the sample above, we used the ViewData dictionary to pass data from the controller to a view.
            ViewData["Message"] = "Hello " + name;
            ViewData["NumTimes"] = numTimes;

            return View();
        }
    }
}