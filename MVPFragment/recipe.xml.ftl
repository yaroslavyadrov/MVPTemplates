<?xml version="1.0"?>
<recipe>

    <#if includeLayout>
        <instantiate from="res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>

    <instantiate from="src/app_package/ui/BlankFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/${subpackage}${className}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/ui/${subpackage}${className}.java" />

    <#if includeView>
    <instantiate from="src/app_package/ui/BlankView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/${subpackage}${viewName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/ui/${subpackage}${viewName}.java" />
    </#if>

    <#if includePresenter>
    <instantiate from="src/app_package/ui/BlankPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/${subpackage}${presenterName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/ui/${subpackage}${presenterName}.java" />
    </#if>

</recipe>
