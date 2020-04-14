Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2017D1A8E0E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 23:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B1AC6E5A3;
	Tue, 14 Apr 2020 21:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C9BE6E5A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 21:52:24 +0000 (UTC)
IronPort-SDR: Y9yPSgw6urI80WtVhfT1p8QuB69SYGS1Q0M5C0TP/VLWRoA429BvC8tuInWVzHSkbGk+u7YXEp
 4ukz3wQlvrCw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 14:52:23 -0700
IronPort-SDR: p6s5dJvcA1u12tfKGfwv6jN1lYt5z7bPxmObtZQRQP6DDNSN92lP+bWbu4VNzC77FT+Ery+4Vo
 nvLqIzvWcwzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; d="scan'208";a="332308758"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga001.jf.intel.com with ESMTP; 14 Apr 2020 14:52:23 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX106.amr.corp.intel.com ([169.254.5.155]) with mapi id 14.03.0439.000;
 Tue, 14 Apr 2020 14:52:22 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Add Wa_14010477008:tgl
Thread-Index: AQHWEqFMcfm+A1zR206kjIQszxH2F6h5noeA
Date: Tue, 14 Apr 2020 21:52:22 +0000
Message-ID: <ca0354494ec9a7223fa98d5a19623738cf91580b.camel@intel.com>
References: <20200414211118.2787489-1-matthew.d.roper@intel.com>
 <20200414211118.2787489-3-matthew.d.roper@intel.com>
In-Reply-To: <20200414211118.2787489-3-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.209.55.81]
Content-ID: <E720E41F3566274FAA7819DF77AD1773@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Add Wa_14010477008:tgl
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTA0LTE0IGF0IDE0OjExIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBN
ZWRpYSBkZWNvbXByZXNzaW9uIHN1cHBvcnQgc2hvdWxkIG5vdCBiZSBhZHZlcnRpc2VkIG9uIGFu
eSBkaXNwbGF5DQo+IHBsYW5lcyBmb3Igc3RlcHBpbmdzIEEwLUMwLg0KDQpSZXZpZXdlZC1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IEJz
cGVjOiA1MzI3Mw0KPiBGaXhlczogMmRmYmY5ZDI4NzNhICgiZHJtL2k5MTUvdGdsOiBHZW4tMTIg
ZGlzcGxheSBjYW4gZGVjb21wcmVzcw0KPiBzdXJmYWNlcyBjb21wcmVzc2VkIGJ5IHRoZSBtZWRp
YSBlbmdpbmUiKQ0KPiBDYzogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29t
Pg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMg
fCAxNyArKysrKysrKysrKystLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aCAgICAgICAgICAgICB8ICAyICsrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfc3ByaXRlLmMNCj4gaW5kZXggZGVkYTM1MTcxOWRiLi4zM2Q4ODYxNDExMzggMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiBA
QCAtMjgxNywxOSArMjgxNywyNSBAQCBzdGF0aWMgYm9vbA0KPiBza2xfcGxhbmVfZm9ybWF0X21v
ZF9zdXBwb3J0ZWQoc3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLA0KPiAgCX0NCj4gIH0NCj4gIA0K
PiAtc3RhdGljIGJvb2wgZ2VuMTJfcGxhbmVfc3VwcG9ydHNfbWNfY2NzKGVudW0gcGxhbmVfaWQg
cGxhbmVfaWQpDQo+ICtzdGF0aWMgYm9vbCBnZW4xMl9wbGFuZV9zdXBwb3J0c19tY19jY3Moc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmRldl9wcml2LA0KPiArCQkJCQllbnVtIHBsYW5lX2lk
IHBsYW5lX2lkKQ0KPiAgew0KPiArCS8qIFdhXzE0MDEwNDc3MDA4OnRnbFthMC4uYzBdICovDQo+
ICsJaWYgKElTX1RHTF9SRVZJRChkZXZfcHJpdiwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQzAp
KQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4gIAlyZXR1cm4gcGxhbmVfaWQgPCBQTEFORV9T
UFJJVEU0Ow0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgYm9vbCBnZW4xMl9wbGFuZV9mb3JtYXRfbW9k
X3N1cHBvcnRlZChzdHJ1Y3QgZHJtX3BsYW5lDQo+ICpfcGxhbmUsDQo+ICAJCQkJCSAgICAgdTMy
IGZvcm1hdCwgdTY0IG1vZGlmaWVyKQ0KPiAgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoX3BsYW5lLT5kZXYpOw0KPiAgCXN0cnVjdCBpbnRlbF9wbGFu
ZSAqcGxhbmUgPSB0b19pbnRlbF9wbGFuZShfcGxhbmUpOw0KPiAgDQo+ICAJc3dpdGNoIChtb2Rp
Zmllcikgew0KPiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTOg0K
PiAtCQlpZiAoIWdlbjEyX3BsYW5lX3N1cHBvcnRzX21jX2NjcyhwbGFuZS0+aWQpKQ0KPiArCQlp
ZiAoIWdlbjEyX3BsYW5lX3N1cHBvcnRzX21jX2NjcyhkZXZfcHJpdiwgcGxhbmUtPmlkKSkNCj4g
IAkJCXJldHVybiBmYWxzZTsNCj4gIAkJLyogZmFsbCB0aHJvdWdoICovDQo+ICAJY2FzZSBEUk1f
Rk9STUFUX01PRF9MSU5FQVI6DQo+IEBAIC0yOTk4LDkgKzMwMDQsMTAgQEAgc3RhdGljIGNvbnN0
IHUzMiAqaWNsX2dldF9wbGFuZV9mb3JtYXRzKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwNCj4gIAl9DQo+ICB9DQo+ICANCj4gLXN0YXRpYyBjb25zdCB1NjQgKmdlbjEyX2dl
dF9wbGFuZV9tb2RpZmllcnMoZW51bSBwbGFuZV9pZCBwbGFuZV9pZCkNCj4gK3N0YXRpYyBjb25z
dCB1NjQgKmdlbjEyX2dldF9wbGFuZV9tb2RpZmllcnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUN
Cj4gKmRldl9wcml2LA0KPiArCQkJCQkgICAgZW51bSBwbGFuZV9pZCBwbGFuZV9pZCkNCj4gIHsN
Cj4gLQlpZiAoZ2VuMTJfcGxhbmVfc3VwcG9ydHNfbWNfY2NzKHBsYW5lX2lkKSkNCj4gKwlpZiAo
Z2VuMTJfcGxhbmVfc3VwcG9ydHNfbWNfY2NzKGRldl9wcml2LCBwbGFuZV9pZCkpDQo+ICAJCXJl
dHVybiBnZW4xMl9wbGFuZV9mb3JtYXRfbW9kaWZpZXJzX21jX2NjczsNCj4gIAllbHNlDQo+ICAJ
CXJldHVybiBnZW4xMl9wbGFuZV9mb3JtYXRfbW9kaWZpZXJzX3JjX2NjczsNCj4gQEAgLTMwNzAs
NyArMzA3Nyw3IEBAIHNrbF91bml2ZXJzYWxfcGxhbmVfY3JlYXRlKHN0cnVjdA0KPiBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIA0KPiAgCXBsYW5lLT5oYXNfY2NzID0gc2tsX3BsYW5l
X2hhc19jY3MoZGV2X3ByaXYsIHBpcGUsIHBsYW5lX2lkKTsNCj4gIAlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMikgew0KPiAtCQltb2RpZmllcnMgPSBnZW4xMl9nZXRfcGxhbmVfbW9kaWZp
ZXJzKHBsYW5lX2lkKTsNCj4gKwkJbW9kaWZpZXJzID0gZ2VuMTJfZ2V0X3BsYW5lX21vZGlmaWVy
cyhkZXZfcHJpdiwNCj4gcGxhbmVfaWQpOw0KPiAgCQlwbGFuZV9mdW5jcyA9ICZnZW4xMl9wbGFu
ZV9mdW5jczsNCj4gIAl9IGVsc2Ugew0KPiAgCQlpZiAocGxhbmUtPmhhc19jY3MpDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBpbmRleCBlOWVlNGRhYTkzMjAuLmUyNTZiNmJlNWQ3OSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IEBAIC0xNTA4LDYgKzE1MDgsOCBAQCBJ
U19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqaTkxNSwNCj4g
IAkoSVNfSUNFTEFLRShwKSAmJiBJU19SRVZJRChwLCBzaW5jZSwgdW50aWwpKQ0KPiAgDQo+ICAj
ZGVmaW5lIFRHTF9SRVZJRF9BMAkJMHgwDQo+ICsjZGVmaW5lIFRHTF9SRVZJRF9CMAkJMHgxDQo+
ICsjZGVmaW5lIFRHTF9SRVZJRF9DMAkJMHgyDQo+ICANCj4gICNkZWZpbmUgSVNfVEdMX1JFVklE
KHAsIHNpbmNlLCB1bnRpbCkgXA0KPiAgCShJU19USUdFUkxBS0UocCkgJiYgSVNfUkVWSUQocCwg
c2luY2UsIHVudGlsKSkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
