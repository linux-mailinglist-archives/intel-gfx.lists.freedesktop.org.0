Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A991A062C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 17:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2627A891B3;
	Wed, 28 Aug 2019 15:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C1D5891B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 15:22:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 08:22:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="210201426"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga002.fm.intel.com with ESMTP; 28 Aug 2019 08:22:25 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 08:22:21 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 28 Aug 2019 08:22:20 -0700
Received: from bgsmsx153.gar.corp.intel.com (10.224.23.4) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 28 Aug 2019 08:22:20 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX153.gar.corp.intel.com ([169.254.2.178]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 20:52:18 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v8][PATCH 03/10] drm/i915/display: Add func to compare hw/sw
 gamma lut
Thread-Index: AQHVW9inNELD3wynAEG8S9+VYoG1vKcQrxnQ
Date: Wed, 28 Aug 2019 15:22:17 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D3902@BGSMSX104.gar.corp.intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
 <1566800772-18412-4-git-send-email-swati2.sharma@intel.com>
In-Reply-To: <1566800772-18412-4-git-send-email-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzdlNjQ4ZDMtYWMyYS00MGM2LTg5MTctNjNkOTFkNjdiZmVmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVlk3ckN4XC80cUFOUHVjXC9NTzBwalV3bXJ1Rk5Lb0licENUVTdWMmxqRkhUZ2g4Nk9XQ25ZTitUcDVBbWRLZUdvIn0=
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v8][PATCH 03/10] drm/i915/display: Add func to
 compare hw/sw gamma lut
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFNoYXJtYSwgU3dhdGkyCj5TZW50
OiBNb25kYXksIEF1Z3VzdCAyNiwgMjAxOSAxMTo1NiBBTQo+VG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPkNjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IFNoYXJtYSwgU2hhc2hhbmsKPjxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPjsgTWFubmEsIEFu
aW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsKPk5hdXRpeWFsLCBBbmtpdCBLIDxhbmtp
dC5rLm5hdXRpeWFsQGludGVsLmNvbT47IGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g7Cj52aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+OyBTaGFybWEsCj5Td2F0aTIgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgo+U3ViamVjdDog
W3Y4XVtQQVRDSCAwMy8xMF0gZHJtL2k5MTUvZGlzcGxheTogQWRkIGZ1bmMgdG8gY29tcGFyZSBo
dy9zdyBnYW1tYSBsdXQKPgo+QWRkIGZ1bmMgaW50ZWxfY29sb3JfbHV0X2VxdWFsKCkgdG8gY29t
cGFyZSBody9zdyBnYW1tYSBsdXQgdmFsdWVzLiBTaW5jZSBody9zdwo+Z2FtbWEgbHV0IHNpemVz
IGFuZCBsdXQgZW50ZXJpZXMgY29tcGFyc2lvbiB3aWxsIGJlIGRpZmZlcmVudCBmb3IgZGlmZmVy
ZW50IGdhbW1hCgpUeXBvIGhlcmUgaW4gZW50cmllcyBhbmQgY29tcGFyaXNvbi4KCj5tb2Rlcywg
YWRkIGdhbW1hIG1vZGUgZGVwZW5kZW50IGNoZWNrcy4KClBsZWFzZSBrZWVwIHRoZSByZXZpc2lv
biBoaXN0b3J5IG9mIHBhdGNoIGFzIHdlbGwuIEFsc28gYWRkIHdoYXQgaXMgY2hhbmdlZCBmcm9t
IHRoZQpwcmV2aW91cyB2ZXJzaW9uLCBsaWtlIGxpbWl0aW5nIHRvIGdhbW1hIG1vZGUgYWxvbmUu
Cgo+U2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4K
Pi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDcxICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5oIHwgIDYgKysrCj4gMiBmaWxlcyBjaGFuZ2VkLCA3NyBpbnNlcnRpb25z
KCspCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nv
bG9yLmMKPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCj5pbmRl
eCBkMmMxMjk3Li4yNzcyN2ExIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb2xvci5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbG9yLmMKPkBAIC0xNDUwLDYgKzE0NTAsNzcgQEAgaW50IGludGVsX2NvbG9yX2dldF9n
YW1tYV9iaXRfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdAo+aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0Cj4gCXJldHVybiAwOwo+IH0KPgo+K3N0YXRpYyBpbmxpbmUgYm9vbCBlcnJfY2hlY2soc3Ry
dWN0IGRybV9jb2xvcl9sdXQgKnN3X2x1dCwKPisJCQkgICAgIHN0cnVjdCBkcm1fY29sb3JfbHV0
ICpod19sdXQsIHUzMiBlcnIpIHsKPisJcmV0dXJuICgoYWJzKChsb25nKWh3X2x1dC0+cmVkIC0g
c3dfbHV0LT5yZWQpKSA8PSBlcnIpICYmCj4rCQkoKGFicygobG9uZylod19sdXQtPmJsdWUgLSBz
d19sdXQtPmJsdWUpKSA8PSBlcnIpICYmCj4rCQkoKGFicygobG9uZylod19sdXQtPmdyZWVuIC0g
c3dfbHV0LT5ncmVlbikpIDw9IGVycik7IH0KPisKPitzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxf
Y29sb3JfbHV0X2VudHJ5X2VxdWFsKHN0cnVjdCBkcm1fY29sb3JfbHV0ICpzd19sdXQsCj4rCQkJ
CQkgICAgICAgc3RydWN0IGRybV9jb2xvcl9sdXQgKmh3X2x1dCwKPisJCQkJCSAgICAgICBpbnQg
aHdfbHV0X3NpemUsIHUzMiBlcnIpCj4rewo+KwlpbnQgaTsKPisKPisJZm9yIChpID0gMDsgaSA8
IGh3X2x1dF9zaXplOyBpKyspIHsKPisJCWlmICghZXJyX2NoZWNrKCZod19sdXRbaV0sICZzd19s
dXRbaV0sIGVycikpCj4rCQkJcmV0dXJuIGZhbHNlOwo+Kwl9Cj4rCj4rCXJldHVybiB0cnVlOwo+
K30KPisKPitib29sIGludGVsX2NvbG9yX2x1dF9lcXVhbChzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Js
b2IgKmJsb2IxLAo+KwkJCSAgIHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjIsCj4rCQkJ
ICAgdTMyIGdhbW1hX21vZGUsIHUzMiBiaXRfcHJlY2lzaW9uKSB7Cj4rCXN0cnVjdCBkcm1fY29s
b3JfbHV0ICpzd19sdXQsICpod19sdXQ7Cj4rCWludCBzd19sdXRfc2l6ZSwgaHdfbHV0X3NpemU7
Cj4rCXUzMiBlcnI7Cj4rCj4rCWlmICghYmxvYjEgIT0gIWJsb2IyKQo+KwkJcmV0dXJuIGZhbHNl
Owo+Kwo+KwlpZiAoIWJsb2IxKQo+KwkJcmV0dXJuIHRydWU7Cj4rCj4rCXN3X2x1dF9zaXplID0g
ZHJtX2NvbG9yX2x1dF9zaXplKGJsb2IxKTsKPisJaHdfbHV0X3NpemUgPSBkcm1fY29sb3JfbHV0
X3NpemUoYmxvYjIpOwo+Kwo+Kwlzd2l0Y2ggKGdhbW1hX21vZGUpIHsKPisJY2FzZSBHQU1NQV9N
T0RFX01PREVfOEJJVDoKPisJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6Cj4rCQlpZiAoc3df
bHV0X3NpemUgIT0gaHdfbHV0X3NpemUpCj4rCQkJcmV0dXJuIGZhbHNlOwo+KwkJZWxzZQoKWW91
IG1heSBkcm9wIGVsc2UsIGp1c3Qgc2ltcGx5IHB1dCBicmVhay4KCj4rCQkJYnJlYWs7Cj4rCWRl
ZmF1bHQ6Cj4rCQlNSVNTSU5HX0NBU0UoZ2FtbWFfbW9kZSk7Cj4rCQkJcmV0dXJuIGZhbHNlOwo+
Kwl9Cj4rCj4rCXN3X2x1dCA9IGJsb2IxLT5kYXRhOwo+Kwlod19sdXQgPSBibG9iMi0+ZGF0YTsK
PisKPisJZXJyID0gMHhmZmZmID4+IGJpdF9wcmVjaXNpb247Cj4rCj4rCXN3aXRjaCAoZ2FtbWFf
bW9kZSkgewo+KwljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOgo+KwljYXNlIEdBTU1BX01PREVf
TU9ERV8xMEJJVDoKPisJCWlmICghaW50ZWxfY29sb3JfbHV0X2VudHJ5X2VxdWFsKHN3X2x1dCwg
aHdfbHV0LCBod19sdXRfc2l6ZSwgZXJyKSkKCkxpbWl0IGl0IHdpdGhpbiA4MCBjaGFyYWN0ZXJz
LgoKPisJCQkJcmV0dXJuIGZhbHNlOwo+KwkJZWxzZQo+KwkJCQlicmVhazsKCkRyb3AgZWxzZSBo
ZXJlIGFzIHdlbGwuIEluZGVudGF0aW9uIGFsc28gc2VlbXMgb2ZmLgoKPisJZGVmYXVsdDoKPisJ
CU1JU1NJTkdfQ0FTRShnYW1tYV9tb2RlKTsKPisJCQlyZXR1cm4gZmFsc2U7Cj4rCX0KPisKPisJ
cmV0dXJuIHRydWU7Cj4rfQo+Kwo+IHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YykgIHsKPiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShjcnRjLT5iYXNlLmRldik7IGRpZmYgLS1naXQKPmEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5oCj5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY29sb3IuaAo+aW5kZXggMDIyNmQzYS4uMTczNzI3YSAxMDA2NDQKPi0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuaAo+KysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5oCj5AQCAtNiw4ICs2LDExIEBACj4gI2lmbmRlZiBf
X0lOVEVMX0NPTE9SX0hfXwo+ICNkZWZpbmUgX19JTlRFTF9DT0xPUl9IX18KPgo+KyNpbmNsdWRl
IDxsaW51eC90eXBlcy5oPgo+Kwo+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOwo+IHN0cnVjdCBp
bnRlbF9jcnRjOwo+K3N0cnVjdCBkcm1fcHJvcGVydHlfYmxvYjsKPgo+IHZvaWQgaW50ZWxfY29s
b3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7ICBpbnQgaW50ZWxfY29sb3JfY2hlY2so
c3RydWN0Cj5pbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsgQEAgLTE1LDUgKzE4LDggQEAg
IHZvaWQgaW50ZWxfY29sb3JfbG9hZF9sdXRzKGNvbnN0Cj5zdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSk7ICB2b2lkIGludGVsX2NvbG9yX2dldF9jb25maWcoc3RydWN0Cj5pbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsgIGludCBpbnRlbF9jb2xvcl9nZXRfZ2FtbWFfYml0
X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QKPmludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwo+
K2Jvb2wgaW50ZWxfY29sb3JfbHV0X2VxdWFsKHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxv
YjEsCj4rCQkJICAgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iMiwKPisJCQkgICB1MzIg
Z2FtbWFfbW9kZSwgdTMyIGJpdF9wcmVjaXNpb24pOwo+Cj4gI2VuZGlmIC8qIF9fSU5URUxfQ09M
T1JfSF9fICovCj4tLQo+MS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
