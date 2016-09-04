package ${packageName}.ui${dotSubpackage};

import android.os.Bundle;
<#if includePresenter>
import android.support.annotation.Nullable;
</#if>
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
<#if includePresenter>
import javax.inject.Inject;
import ${packageName}.ui.base.BaseActivity;
</#if>
<#if useButterKnife>
import butterknife.ButterKnife;
</#if>
import ${packageName}.R;


public class ${className} extends Fragment <#if includeView>implements ${viewName} </#if>{
  public static final String TAG = "${className}";

  <#if includePresenter>
  @Inject
  ${presenterName} presenter;
  </#if>

<#if includeFactory>
  public static ${className} createFragment() {
    ${className} fragment = new ${className}();

    Bundle args = new Bundle();
    fragment.setArguments(args);

    return fragment;
  }
</#if>

  public ${className}() {}

  @Override
  public View onCreateView(final LayoutInflater inflater, final   ViewGroup container, final Bundle savedInstanceState) {
    View view = inflater.inflate(R.layout.${fragmentName}, container, false);
    <#if useButterKnife>
    ButterKnife.bind(this, view);
		</#if>
    return view;
  }

<#if includePresenter>
  @Override
  public void onActivityCreated(@Nullable Bundle savedInstanceState) {
    super.onActivityCreated(savedInstanceState);
    ((BaseActivity) getActivity()).activityComponent().inject(this);
  }

  @Override
  public void onResume() {
    super.onResume();
    presenter.attachView(this);
  }

  @Override
  public void onPause() {
   super.onPause();
   presenter.detachView();
  }
</#if>

}
