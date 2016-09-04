<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
        <activity
            android:name="${relativePackage}.ui${dotSubpackage}.${className}"
            android:configChanges="orientation"
            android:screenOrientation="portrait"
            android:theme="@style/AppTheme"/>
    </application>
</manifest>
