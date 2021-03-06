﻿/**  版本信息模板在安装目录下，可自行修改。
* ManagerLog.cs
*
* 功 能： N/A
* 类 名： ManagerLog
*
* Ver    变更日期             负责人  变更内容
* ───────────────────────────────────
* V0.01  2016/10/2 0:21:22   N/A    初版
*
* Copyright (c) 2012 Maticsoft Corporation. All rights reserved.
*┌──────────────────────────────────┐
*│　此技术信息为本公司机密信息，未经本公司书面同意禁止向第三方披露．　│
*│　版权所有：动软卓越（北京）科技有限公司　　　　　　　　　　　　　　│
*└──────────────────────────────────┘
*/
using System;
namespace Maticsoft.Model
{
	/// <summary>
	/// ManagerLog:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class ManagerLog
	{
		public ManagerLog()
		{}
		#region Model
		private int _keyid;
		private int _managerid=0;
		private DateTime _addtime= DateTime.Now;
		private string _content;
		/// <summary>
		/// 
		/// </summary>
		public int KeyID
		{
			set{ _keyid=value;}
			get{return _keyid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int ManagerID
		{
			set{ _managerid=value;}
			get{return _managerid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime AddTime
		{
			set{ _addtime=value;}
			get{return _addtime;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Content
		{
			set{ _content=value;}
			get{return _content;}
		}
		#endregion Model

	}
}

