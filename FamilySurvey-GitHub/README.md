# FamilySurvey iOS WebView

تطبيق iPhone بسيط يفتح الرابط التالي داخل `WKWebView`:

`https://fesurvey.stats.gov.sa/family/auth/user`

## طريقة الاستخدام عبر GitHub

1. أنشئ مستودع GitHub جديد.
2. ارفع جميع الملفات والمجلدات الموجودة في هذا المشروع كما هي.
3. تأكد أن الفرع الرئيسي اسمه `main`.
4. افتح تبويب **Actions**.
5. اختر **Build Unsigned IPA**.
6. اضغط **Run workflow**.
7. بعد اكتمال البناء افتح نتيجة التشغيل.
8. من قسم **Artifacts** نزّل:
   `FamilySurvey-unsigned-ipa`
9. فك ضغط ملف الـArtifact وستجد:
   `FamilySurvey-unsigned.ipa`
10. وقّع ملف IPA بالطريقة أو الأداة التي تستخدمها، ثم ثبّته على جهازك.

## تعديل الرابط

افتح:

`App/FamilySurveyApp.swift`

وغيّر قيمة `surveyURL`.

## تعديل اسم التطبيق

غيّر `CFBundleDisplayName` داخل:

`App/Info.plist`

## تعديل Bundle ID

غيّر:

`PRODUCT_BUNDLE_IDENTIFIER`

داخل:

`project.yml`

القيمة الحالية:

`com.github.fesurvey.wrapper`

## ملاحظات

- GitHub Actions يبني التطبيق مع تعطيل Code Signing.
- الـIPA الناتج غير موقّع ومخصص لإعادة التوقيع خارج GitHub.
- التطبيق لا يضيف طبقة تسجيل دخول خاصة به؛ صفحة الموقع الرسمية هي التي تُحمّل داخل WebView.
- تم تمكين JavaScript والكوكيز الافتراضية، ودعم الروابط التي تفتح نافذة جديدة، وروابط مثل `tel:` و`mailto:`.
