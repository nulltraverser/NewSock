﻿

//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LightSwitchApplication
{
    #region Entities
    
    /// <summary>
    /// No Modeled Description Available
    /// </summary>
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.LightSwitch.BuildTasks.CodeGen", "12.0.0.0")]
    public sealed partial class Message : global::Microsoft.LightSwitch.Framework.Base.EntityObject<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass>
    {
        #region Constructors
    
        /// <summary>
        /// Initializes a new instance of the Message entity.
        /// </summary>
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.LightSwitch.BuildTasks.CodeGen", "12.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public Message()
            : this(null)
        {
        }
    
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.LightSwitch.BuildTasks.CodeGen", "12.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public Message(global::Microsoft.LightSwitch.Framework.EntitySet<global::LightSwitchApplication.Message> entitySet)
            : base(entitySet)
        {
            global::LightSwitchApplication.Message.DetailsClass.Initialize(this);
        }
    
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        partial void Message_Created();
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        partial void Message_AllowSaveWithErrors(ref bool result);
    
        #endregion
    
        #region Private Properties
        
        /// <summary>
        /// Gets the Application object for this application.  The Application object provides access to active screens, methods to open screens and access to the current user.
        /// </summary>
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.LightSwitch.BuildTasks.CodeGen", "12.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::Microsoft.LightSwitch.IApplication<global::LightSwitchApplication.DataWorkspace> Application
        {
            get
            {
                return (global::Microsoft.LightSwitch.IApplication<global::LightSwitchApplication.DataWorkspace>)global::LightSwitchApplication.Application.Current;
            }
        }
        
        /// <summary>
        /// Gets the containing data workspace.  The data workspace provides access to all data sources in the application.
        /// </summary>
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.LightSwitch.BuildTasks.CodeGen", "12.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::LightSwitchApplication.DataWorkspace DataWorkspace
        {
            get
            {
                return (global::LightSwitchApplication.DataWorkspace)this.Details.EntitySet.Details.DataService.Details.DataWorkspace;
            }
        }
        
        #endregion
    
        #region Public Properties
    
        /// <summary>
        /// No Modeled Description Available
        /// </summary>
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.LightSwitch.BuildTasks.CodeGen", "12.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public long ID
        {
            get
            {
                return global::LightSwitchApplication.Message.DetailsClass.GetValue(this, global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties.ID);
            }
        }
        
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        partial void ID_IsReadOnly(ref bool result);
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        partial void ID_Validate(global::Microsoft.LightSwitch.EntityValidationResultsBuilder results);
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        partial void ID_Changed();

        /// <summary>
        /// No Modeled Description Available
        /// </summary>
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.LightSwitch.BuildTasks.CodeGen", "12.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public string MessageName
        {
            get
            {
                return global::LightSwitchApplication.Message.DetailsClass.GetValue(this, global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties.MessageName);
            }
            set
            {
                global::LightSwitchApplication.Message.DetailsClass.SetValue(this, global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties.MessageName, value);
            }
        }
        
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        partial void MessageName_IsReadOnly(ref bool result);
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        partial void MessageName_Validate(global::Microsoft.LightSwitch.EntityValidationResultsBuilder results);
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        partial void MessageName_Changed();

        /// <summary>
        /// No Modeled Description Available
        /// </summary>
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.LightSwitch.BuildTasks.CodeGen", "12.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public string Message1
        {
            get
            {
                return global::LightSwitchApplication.Message.DetailsClass.GetValue(this, global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties.Message1);
            }
            set
            {
                global::LightSwitchApplication.Message.DetailsClass.SetValue(this, global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties.Message1, value);
            }
        }
        
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        partial void Message1_IsReadOnly(ref bool result);
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        partial void Message1_Validate(global::Microsoft.LightSwitch.EntityValidationResultsBuilder results);
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        partial void Message1_Changed();

        #endregion
    
        #region Details Class
    
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1034:NestedTypesShouldNotBeVisible")]
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.LightSwitch.BuildTasks.CodeGen", "12.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public sealed class DetailsClass : global::Microsoft.LightSwitch.Details.Framework.Base.EntityDetails<
                global::LightSwitchApplication.Message,
                global::LightSwitchApplication.Message.DetailsClass,
                global::LightSwitchApplication.Message.DetailsClass.IImplementation,
                global::LightSwitchApplication.Message.DetailsClass.PropertySet,
                global::Microsoft.LightSwitch.Details.Framework.EntityCommandSet<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass>,
                global::Microsoft.LightSwitch.Details.Framework.EntityMethodSet<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass>>
        {
    
            static DetailsClass()
            {
                var initializeEntry = global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties.ID;
            }
    
            [global::System.Diagnostics.DebuggerBrowsable(global::System.Diagnostics.DebuggerBrowsableState.Never)]
            private static readonly global::Microsoft.LightSwitch.Details.Framework.Base.EntityDetails<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass>.Entry
                __MessageEntry = new global::Microsoft.LightSwitch.Details.Framework.Base.EntityDetails<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass>.Entry(
                    global::LightSwitchApplication.Message.DetailsClass.__Message_CreateNew,
                    global::LightSwitchApplication.Message.DetailsClass.__Message_Created,
                    global::LightSwitchApplication.Message.DetailsClass.__Message_AllowSaveWithErrors);
            private static global::LightSwitchApplication.Message __Message_CreateNew(global::Microsoft.LightSwitch.Framework.EntitySet<global::LightSwitchApplication.Message> es)
            {
                return new global::LightSwitchApplication.Message(es);
            }
            private static void __Message_Created(global::LightSwitchApplication.Message e)
            {
                e.Message_Created();
            }
            private static bool __Message_AllowSaveWithErrors(global::LightSwitchApplication.Message e)
            {
                bool result = false;
                e.Message_AllowSaveWithErrors(ref result);
                return result;
            }
    
            public DetailsClass() : base()
            {
            }
    
            public new global::Microsoft.LightSwitch.Details.Framework.EntityCommandSet<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass> Commands
            {
                get
                {
                    return base.Commands;
                }
            }
    
            public new global::Microsoft.LightSwitch.Details.Framework.EntityMethodSet<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass> Methods
            {
                get
                {
                    return base.Methods;
                }
            }
    
            public new global::LightSwitchApplication.Message.DetailsClass.PropertySet Properties
            {
                get
                {
                    return base.Properties;
                }
            }
    
            [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
            [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1034:NestedTypesShouldNotBeVisible")]
            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.LightSwitch.BuildTasks.CodeGen", "12.0.0.0")]
            [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
            public sealed class PropertySet : global::Microsoft.LightSwitch.Details.Framework.Base.EntityPropertySet<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass>
            {
    
                public PropertySet() : base()
                {
                }
    
                public global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, long> ID
                {
                    get
                    {
                        return base.GetItem(global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties.ID) as global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, long>;
                    }
                }
                
                public global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, string> MessageName
                {
                    get
                    {
                        return base.GetItem(global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties.MessageName) as global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, string>;
                    }
                }
                
                public global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, string> Message1
                {
                    get
                    {
                        return base.GetItem(global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties.Message1) as global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, string>;
                    }
                }
                
            }
    
            #pragma warning disable 109
            [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1034:NestedTypesShouldNotBeVisible")]
            public interface IImplementation : global::Microsoft.LightSwitch.Internal.IEntityImplementation
            {
                new long ID { get; }
                new string MessageName { get; set; }
                new string Message1 { get; set; }
            }
            #pragma warning restore 109
    
            [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.LightSwitch.BuildTasks.CodeGen", "12.0.0.0")]
            [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
            internal class PropertySetProperties
            {
    
                [global::System.Diagnostics.DebuggerBrowsable(global::System.Diagnostics.DebuggerBrowsableState.Never)]
                public static readonly global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, long>.Entry
                    ID = new global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, long>.Entry(
                        "ID",
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._ID_Stub,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._ID_ComputeIsReadOnly,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._ID_Validate,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._ID_GetImplementationValue,
                        null,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._ID_OnValueChanged);
                private static void _ID_Stub(global::Microsoft.LightSwitch.Details.Framework.Base.DetailsCallback<global::LightSwitchApplication.Message.DetailsClass, global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, long>.Data> c, global::LightSwitchApplication.Message.DetailsClass d, object sf)
                {
                    c(d, ref d._ID, sf);
                }
                private static bool _ID_ComputeIsReadOnly(global::LightSwitchApplication.Message e)
                {
                    bool result = false;
                    e.ID_IsReadOnly(ref result);
                    return result;
                }
                private static void _ID_Validate(global::LightSwitchApplication.Message e, global::Microsoft.LightSwitch.EntityValidationResultsBuilder r)
                {
                    e.ID_Validate(r);
                }
                private static long _ID_GetImplementationValue(global::LightSwitchApplication.Message.DetailsClass d)
                {
                    return d.ImplementationEntity.ID;
                }
                private static void _ID_OnValueChanged(global::LightSwitchApplication.Message e)
                {
                    e.ID_Changed();
                }
    
                [global::System.Diagnostics.DebuggerBrowsable(global::System.Diagnostics.DebuggerBrowsableState.Never)]
                public static readonly global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, string>.Entry
                    MessageName = new global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, string>.Entry(
                        "MessageName",
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._MessageName_Stub,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._MessageName_ComputeIsReadOnly,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._MessageName_Validate,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._MessageName_GetImplementationValue,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._MessageName_SetImplementationValue,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._MessageName_OnValueChanged);
                private static void _MessageName_Stub(global::Microsoft.LightSwitch.Details.Framework.Base.DetailsCallback<global::LightSwitchApplication.Message.DetailsClass, global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, string>.Data> c, global::LightSwitchApplication.Message.DetailsClass d, object sf)
                {
                    c(d, ref d._MessageName, sf);
                }
                private static bool _MessageName_ComputeIsReadOnly(global::LightSwitchApplication.Message e)
                {
                    bool result = false;
                    e.MessageName_IsReadOnly(ref result);
                    return result;
                }
                private static void _MessageName_Validate(global::LightSwitchApplication.Message e, global::Microsoft.LightSwitch.EntityValidationResultsBuilder r)
                {
                    e.MessageName_Validate(r);
                }
                private static string _MessageName_GetImplementationValue(global::LightSwitchApplication.Message.DetailsClass d)
                {
                    return d.ImplementationEntity.MessageName;
                }
                private static void _MessageName_SetImplementationValue(global::LightSwitchApplication.Message.DetailsClass d, string v)
                {
                    d.ImplementationEntity.MessageName = v;
                }
                private static void _MessageName_OnValueChanged(global::LightSwitchApplication.Message e)
                {
                    e.MessageName_Changed();
                }
    
                [global::System.Diagnostics.DebuggerBrowsable(global::System.Diagnostics.DebuggerBrowsableState.Never)]
                public static readonly global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, string>.Entry
                    Message1 = new global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, string>.Entry(
                        "Message1",
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._Message1_Stub,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._Message1_ComputeIsReadOnly,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._Message1_Validate,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._Message1_GetImplementationValue,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._Message1_SetImplementationValue,
                        global::LightSwitchApplication.Message.DetailsClass.PropertySetProperties._Message1_OnValueChanged);
                private static void _Message1_Stub(global::Microsoft.LightSwitch.Details.Framework.Base.DetailsCallback<global::LightSwitchApplication.Message.DetailsClass, global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, string>.Data> c, global::LightSwitchApplication.Message.DetailsClass d, object sf)
                {
                    c(d, ref d._Message1, sf);
                }
                private static bool _Message1_ComputeIsReadOnly(global::LightSwitchApplication.Message e)
                {
                    bool result = false;
                    e.Message1_IsReadOnly(ref result);
                    return result;
                }
                private static void _Message1_Validate(global::LightSwitchApplication.Message e, global::Microsoft.LightSwitch.EntityValidationResultsBuilder r)
                {
                    e.Message1_Validate(r);
                }
                private static string _Message1_GetImplementationValue(global::LightSwitchApplication.Message.DetailsClass d)
                {
                    return d.ImplementationEntity.Message1;
                }
                private static void _Message1_SetImplementationValue(global::LightSwitchApplication.Message.DetailsClass d, string v)
                {
                    d.ImplementationEntity.Message1 = v;
                }
                private static void _Message1_OnValueChanged(global::LightSwitchApplication.Message e)
                {
                    e.Message1_Changed();
                }
    
            }
    
            [global::System.Diagnostics.DebuggerBrowsable(global::System.Diagnostics.DebuggerBrowsableState.Never)]
            private global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, long>.Data _ID;
            
            [global::System.Diagnostics.DebuggerBrowsable(global::System.Diagnostics.DebuggerBrowsableState.Never)]
            private global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, string>.Data _MessageName;
            
            [global::System.Diagnostics.DebuggerBrowsable(global::System.Diagnostics.DebuggerBrowsableState.Never)]
            private global::Microsoft.LightSwitch.Details.Framework.EntityStorageProperty<global::LightSwitchApplication.Message, global::LightSwitchApplication.Message.DetailsClass, string>.Data _Message1;
            
        }
    
        #endregion
    }
    
    #endregion
}