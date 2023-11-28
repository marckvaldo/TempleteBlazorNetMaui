namespace MainComponents.Data.Menu
{
    public class RootMenu
    {
        public List<Menu> Menu { get; set; }
    }

    public class Menu
    {
        public string Description { get; set; }
        public string Link { get; set; }
        public string Icon { get; set; }
        public string Display { get; set; }
        public List<SubMenu> SubMenu { get; set; }
    }

    public class SubMenu
    {
        public string Description { get; set; }
        public string Link { get; set; }
        public string Icon { get; set; }
        public string Display { get; set; }
    }


}

