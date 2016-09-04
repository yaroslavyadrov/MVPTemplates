package ${packageName}.ui${dotSubpackage};

import javax.inject.Inject;
<#if applicationPackage??>import ${applicationPackage}.R;</#if>
import ${packageName}.data.DataManager;
import ${packageName}.ui.base.BasePresenter;
import ${packageName}.util.RxUtil;
import rx.Subscription;


public class ${presenterName} extends BasePresenter<${viewName}>  {
    private Subscription subscription;

    private DataManager dataManager;

    @Inject
    public ${presenterName}(DataManager dataManager) {
        this.dataManager = dataManager;
    }

    @Override
    public void detachView() {
        super.detachView();
        RxUtil.unsubscribe(subscription);
    }
}
