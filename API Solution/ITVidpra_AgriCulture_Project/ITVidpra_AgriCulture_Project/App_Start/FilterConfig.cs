using System.Web;
using System.Web.Mvc;

namespace ITVidpra_AgriCulture_Project
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
