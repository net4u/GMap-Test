using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GMap.Startup))]
namespace GMap
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
