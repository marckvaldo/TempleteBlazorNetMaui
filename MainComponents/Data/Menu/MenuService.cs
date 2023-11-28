using MainComponents.Helpers;

namespace MainComponents.Data.Menu
{
    public class MenuService
    {
        public async Task<RootMenu> GetMenu() => 
            await Task.FromResult(MainHelpers.Deserialize<RootMenu>(Config.GetMenu()));
    }
}
