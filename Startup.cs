using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(ExamenProd.Startup))]

namespace ExamenProd
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // Add any OWIN middleware configuration here
            app.Use((context, next) =>
            {
                context.Response.Headers.Add("X-Custom-Header", new[] { "My OWIN App" });
                return next();
            });
        }
    }
}
