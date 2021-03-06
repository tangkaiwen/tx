﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Maticsoft.Web.SongShe
{
    public partial class SongSheBrand : System.Web.UI.Page
    {
        public List<Model.PageContent> PageContentList = new List<Model.PageContent>();
        public Model.PageContent pc = new Model.PageContent();
        public DataTable TeamList = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            PageContentList = new BLL.PageContent().GetModelList("(KeyID>=7 and KeyID<=10) or KeyID in (1)");
            TeamList = new BLL.Team().GetList(4, "", "Sort desc,KeyID desc").Tables[0];
        }
    }
}