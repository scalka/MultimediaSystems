using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Lab2WebForms.Startup))]
namespace Lab2WebForms
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
