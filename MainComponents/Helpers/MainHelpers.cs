using MainComponents.Data.Menu;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MainComponents.Helpers
{
    public class MainHelpers
    {
        public static T Deserialize<T>(string json) where T : class, new()
        {
            if (string.IsNullOrEmpty(json)) return new T();
            return JsonConvert.DeserializeObject<T>(json);
        }
    }
}
