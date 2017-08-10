package ${packageName}.ui${dotSubpackage}

import android.os.Bundle
import ${packageName}.R
<#if extendsBaseActivity>
import ${packageName}.ui.base.BaseActivity
<#else>
import android.support.v7.app.AppCompatActivity
</#if>
<#if includePresenter>
import javax.inject.Inject
</#if>

<#if extendsBaseActivity>
class ${className} : <#if !includeView>BaseActivity() {</#if>
    <#if includeView>BaseActivity(),
		${viewName} {</#if>
<#else>
class ${className} : <#if !includeView>AppCompatActivity() {</#if>
    <#if includeView>AppCompatActivity(),
		${viewName} {</#if>
</#if>

	<#if includePresenter>
	@Inject lateinit var presenter: ${presenterName}
	</#if>

	override fun onCreate(savedInstanceState: Bundle?) {
		super.onCreate(savedInstanceState)
		<#if includePresenter>
		activityComponent?.inject(this)
		</#if>
		<#if includeLayout>
		setContentView(R.layout.${activityName})
		</#if>
		<#if includePresenter>
		presenter.bind(this)
		</#if>
}

	<#if includePresenter>
	override fun onDestroy() {
    presenter.destroy()
    super.onDestroy()
  }
	</#if>
}
