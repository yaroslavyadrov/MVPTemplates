package ${packageName}.ui${dotSubpackage};

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

<#if includePresenter>
import javax.inject.Inject;
</#if>

<#if useButterKnife>
import butterknife.ButterKnife;
</#if>
import ${packageName}.R;
<#if extendsBaseActivity>
import ${packageName}.ui.base.BaseActivity;
<#else>
import android.support.v7.app.AppCompatActivity;
</#if>

<#if extendsBaseActivity>
public class ${className} extends BaseActivity <#if includeView>implements ${viewName} </#if>{
<#else>
public class ${className} extends AppCompatActivity <#if includeView>implements ${viewName} </#if>{
</#if>
	public static final String TAG = "${className}";

	<#if includePresenter>
	@Inject	${presenterName} presenter;
	</#if>

	<#if includeFactory>
	public static Intent getStartIntent(final Context context) {
		Intent intent = new Intent(context, ${className}.class);

		return intent;
	}
	</#if>

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		<#if includePresenter>
		activityComponent().inject(this);
		</#if>
		<#if includeLayout>
		setContentView(R.layout.${activityName});
		</#if>
		<#if useButterKnife>
		ButterKnife.bind(this);
		</#if>
		<#if includePresenter>
		presenter.attachView(this);
		</#if>
	}

	<#if includePresenter>
	@Override
	public void onDestroy() {
		super.onDestroy();
		presenter.detachView();
	}
	</#if>
}
