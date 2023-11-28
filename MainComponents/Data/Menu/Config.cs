namespace MainComponents.Data.Menu
{
    public static class Config
    {
        public static string GetMenu()
        {
            return @"{"+
                      "\"Menu\": ["+
                        "{"+
                          "\"Description\": \"Home\","+
                          "\"Link\": \"/\","+
                          "\"Icon\": \"icons/svg/Home.svg\","+
                          "\"Display\": \"Novo\""+
                        "},"+
                        "{"+
                          "\"Description\": \"Cadastros\","+
                          "\"Icon\": \"\","+
                          "\"Link\": \"\","+
                          "\"Display\": \"\","+
                          "\"SubMenu\": ["+
                            "{"+
                              "\"Description\": \"Produtos\","+
                              "\"Link\": \"/Counter\","+
                              "\"Icon\": \"\","+
                              "\"Display\": \"New\""+
                            "},"+
                            "{"+
                              "\"Description\": \"Clientes\","+
                              "\"Link\": \"/\","+
                              "\"Icon\": \"\","+
                              "\"Display\": \"Novo\""+
                            "}"+
                         "]"+
                       "}"+
                     "]"+
                   "}";
        }
    }
}
