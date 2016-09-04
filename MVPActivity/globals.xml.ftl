<?xml version="1.0"?>
<globals>
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="manifestOut" value="${manifestDir}" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />
    <global id="subpackage" value="<#if useSubPackage>${subPackage}/<#else></#if>" />
    <global id="dotSubpackage" value="<#if useSubPackage>.${subPackage}<#else></#if>" />
</globals>
