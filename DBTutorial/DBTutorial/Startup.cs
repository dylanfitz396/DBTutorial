using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DBTutorial.Startup))]
namespace DBTutorial
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
