<?xml version="1.0"?>
<recipe>

    <#if includeLayout>
        <instantiate from="res/layout/activity_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />
    </#if>

    <instantiate from="src/app_package/ui/BlankActivity.java.ftl"
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

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

</recipe>
