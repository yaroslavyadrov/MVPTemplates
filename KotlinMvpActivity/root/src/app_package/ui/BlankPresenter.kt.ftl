package ${packageName}.ui${dotSubpackage}

import ${packageName}.data.DataManager
import ${packageName}.ui.base.BasePresenter
import javax.inject.Inject


class ${presenterName} @Inject constructor(private val dataManager: DataManager) : BasePresenter<${viewName}>() {

}
