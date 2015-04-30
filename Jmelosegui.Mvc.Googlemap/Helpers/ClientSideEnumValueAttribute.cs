﻿using System;

namespace Jmelosegui.Mvc.Googlemap
{
    [AttributeUsage(AttributeTargets.Field, AllowMultiple = false, Inherited = true)]
    public class ClientSideEnumValueAttribute : Attribute
    {
        public string Value
        {
            get;
            private set;
        }
        public ClientSideEnumValueAttribute(string value)
        {
            if (value == null) throw new ArgumentNullException("value");
            this.Value = value;
        }
    }
}
