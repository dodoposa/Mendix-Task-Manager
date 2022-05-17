// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package task_manager_module.proxies;

public class My_Actions_User_DataGrid extends system.proxies.Paging
{
	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "Task_Manager_Module.My_Actions_User_DataGrid";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		PageNumber("PageNumber"),
		IsSortable("IsSortable"),
		SortAttribute("SortAttribute"),
		SortAscending("SortAscending"),
		HasMoreData("HasMoreData");

		private java.lang.String metaName;

		MemberNames(java.lang.String s)
		{
			metaName = s;
		}

		@java.lang.Override
		public java.lang.String toString()
		{
			return metaName;
		}
	}

	public My_Actions_User_DataGrid(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, "Task_Manager_Module.My_Actions_User_DataGrid"));
	}

	protected My_Actions_User_DataGrid(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject my_Actions_User_DataGridMendixObject)
	{
		super(context, my_Actions_User_DataGridMendixObject);
		if (!com.mendix.core.Core.isSubClassOf("Task_Manager_Module.My_Actions_User_DataGrid", my_Actions_User_DataGridMendixObject.getType()))
			throw new java.lang.IllegalArgumentException("The given object is not a Task_Manager_Module.My_Actions_User_DataGrid");
	}

	/**
	 * @deprecated Use 'My_Actions_User_DataGrid.load(IContext, IMendixIdentifier)' instead.
	 */
	@java.lang.Deprecated
	public static task_manager_module.proxies.My_Actions_User_DataGrid initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		return task_manager_module.proxies.My_Actions_User_DataGrid.load(context, mendixIdentifier);
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 */
	public static task_manager_module.proxies.My_Actions_User_DataGrid initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new task_manager_module.proxies.My_Actions_User_DataGrid(context, mendixObject);
	}

	public static task_manager_module.proxies.My_Actions_User_DataGrid load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return task_manager_module.proxies.My_Actions_User_DataGrid.initialize(context, mendixObject);
	}

	@java.lang.Override
	public boolean equals(Object obj)
	{
		if (obj == this)
			return true;

		if (obj != null && getClass().equals(obj.getClass()))
		{
			final task_manager_module.proxies.My_Actions_User_DataGrid that = (task_manager_module.proxies.My_Actions_User_DataGrid) obj;
			return getMendixObject().equals(that.getMendixObject());
		}
		return false;
	}

	@java.lang.Override
	public int hashCode()
	{
		return getMendixObject().hashCode();
	}

	/**
	 * @return String name of this class
	 */
	public static java.lang.String getType()
	{
		return "Task_Manager_Module.My_Actions_User_DataGrid";
	}

	/**
	 * @return String GUID from this object, format: ID_0000000000
	 * @deprecated Use getMendixObject().getId().toLong() to get a unique identifier for this object.
	 */
	@java.lang.Override
	@java.lang.Deprecated
	public java.lang.String getGUID()
	{
		return "ID_" + getMendixObject().getId().toLong();
	}
}
