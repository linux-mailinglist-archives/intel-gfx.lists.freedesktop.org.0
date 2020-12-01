Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89E72CA78B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 17:00:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA736E5A4;
	Tue,  1 Dec 2020 16:00:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32B166E5A4
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 16:00:28 +0000 (UTC)
IronPort-SDR: 8IUfwyvZ0zkQTXKymoyfqo680mk4V5c9+UAxY/vFhW9clxaUqkzxy0RYioj0P4qV3XdpMqebTD
 oXYlCyu43fcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="159905297"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="159905297"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 08:00:25 -0800
IronPort-SDR: whYmvIeNGOFwyhiVermj+5NUfCYCbefg4oYqVpsfubSyPTtXZaqk6D4ybDdBlEuK31qj3VZINj
 0LlXoo6tNveA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="549621528"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 01 Dec 2020 08:00:23 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 08:00:21 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 08:00:20 -0800
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 1 Dec 2020 21:30:18 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v4 1/2] drm/i915/display/tgl: Disable FBC with PSR2
Thread-Index: AQHWx+ncZKKxXCcCu0SBi0NvyhcWvqniB42AgAABIYCAAFyA8A==
Date: Tue, 1 Dec 2020 16:00:17 +0000
Message-ID: <e5319acc210348b9aa4e2697295be824@intel.com>
References: <20201201143042.22188-1-uma.shankar@intel.com>
 <20201201143042.22188-2-uma.shankar@intel.com>
 <c15b78267f9c82e2eb4d6ff9989f013c51b4c4f7.camel@intel.com>
 <7bb7468a0b8f43258d7e01a64fee31f682fd5737.camel@intel.com>
In-Reply-To: <7bb7468a0b8f43258d7e01a64fee31f682fd5737.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v4 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291emEsIEpvc2UgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBEZWNlbWJlciAxLCAyMDIwIDk6
MjUgUE0NCj4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20NCj4gU3ViamVjdDogUmU6IFt2NCAxLzJdIGRybS9pOTE1L2Rpc3BsYXkvdGdsOiBEaXNh
YmxlIEZCQyB3aXRoIFBTUjINCj4gDQo+IE9uIFR1ZSwgMjAyMC0xMi0wMSBhdCAwNzo1MSAtMDgw
MCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiBPbiBUdWUsIDIwMjAtMTItMDEg
YXQgMjA6MDAgKzA1MzAsIFVtYSBTaGFua2FyIHdyb3RlOg0KPiA+ID4gVGhlcmUgYXJlIHNvbWUg
Y29ybmVyIGNhc2VzIHdydCB1bmRlcnJ1biB3aGVuIHdlIGVuYWJsZSBGQkMgd2l0aA0KPiA+ID4g
UFNSMiBvbiBUR0wuIFJlY29tbWVuZGF0aW9uIGZyb20gaGFyZHdhcmUgaXMgdG8ga2VlcCB0aGlz
DQo+ID4gPiBjb21iaW5hdGlvbiBkaXNhYmxlZC4NCj4gPiA+DQo+ID4gPiBCc3BlYzogNTA0MjIg
SFNEOiAxNDAxMDI2MDAwMg0KPiA+ID4NCj4gPiA+IHYyOiBBZGRlZCBwc3IyIGVuYWJsZWQgY2hl
Y2sgZnJvbSBjcnRjX3N0YXRlIChBbnNodW1hbikgQWRkZWQgQnNwZWMNCj4gPiA+IGxpbmsgYW5k
IEhTRCByZWZlcm5lY2VzIChKb3NlKQ0KPiA+ID4NCj4gPiA+IHYzOiBNb3ZlZCB0aGUgbG9naWMg
dG8gZGlzYWJsZSBmYmMgdG8gaW50ZWxfZmJjX3VwZGF0ZV9zdGF0ZV9jYWNoZQ0KPiA+ID4gYW5k
IHJlbW92ZWQgdGhlIGNydGMtPmNvbmZpZyB1c2FnZXMsIGFzIHBlciBWaWxsZSdzIHJlY29tbWVu
ZGF0aW9uLg0KPiA+ID4NCj4gPiA+IHY0OiBJbnRyb2R1Y2VkIGEgdmFyaWFibGUgaW4gZmJjIHN0
YXRlX2NhY2hlIGluc3RlYWQgb2YgdGhlIGVhcmxpZXINCj4gPiA+IHBsYW5lLnZpc2libGUgV0Es
IGFzIHN1Z2dlc3RlZCBieSBKb3NlLg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFVtYSBT
aGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDI5ICsrKysrKysrKysrKysrKysr
KysrKysrKw0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAg
IHwgIDEgKw0KPiA+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKykNCj4gPiA+
DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+
ID4gPiBpbmRleCBhNWIwNzI4MTZhN2IuLmZmMmYyYzAwYTEwZSAxMDA2NDQNCj4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+IEBAIC03MDAsNyAr
NzAwLDIxIEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY191cGRhdGVfc3RhdGVfY2FjaGUoc3RydWN0
DQo+IGludGVsX2NydGMgKmNydGMsDQo+ID4gPiDCoAlzdHJ1Y3QgaW50ZWxfZmJjX3N0YXRlX2Nh
Y2hlICpjYWNoZSA9ICZmYmMtPnN0YXRlX2NhY2hlOw0KPiA+ID4gwqAJc3RydWN0IGRybV9mcmFt
ZWJ1ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+aHcuZmI7DQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+
ID4gPg0KPiA+ID4gKwlpZiAoY3J0Y19zdGF0ZS0+aGFzX3BzcjIpDQo+ID4gPiArCQljYWNoZS0+
cHNyMl9hY3RpdmUgPSB0cnVlOw0KPiA+ID4gKwllbHNlDQo+ID4gPiArCQljYWNoZS0+cHNyMl9h
Y3RpdmUgPSBmYWxzZTsNCj4gPg0KPiA+IGNhY2hlLT5wc3IyX2FjdGl2ZSA9IGNydGNfc3RhdGUt
Pmhhc19wc3IyOw0KDQpZZWFoIHN1cmUsIHdpbGwgdXBkYXRlIHRoaXMuDQoNCj4gPg0KPiA+ID4g
Kw0KPiA+ID4gKwkvKg0KPiA+ID4gKwkgKiBUaWdlcmxha2UgaXMgbm90IHN1cHBvcnRpbmcgRkJD
IHdpdGggUFNSMi4NCj4gPiA+ICsJICogUmVjb21tZW5kYXRpb24gaXMgdG8ga2VlcCB0aGlzIGNv
bWJpbmF0aW9uIGRpc2FibGVkDQo+ID4gPiArCSAqIEJzcGVjOiA1MDQyMiBIU0Q6IDE0MDEwMjYw
MDAyDQo+ID4gPiArCSAqLw0KPiA+ID4gKwlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSAmJiBj
YWNoZS0+cHNyMl9hY3RpdmUpDQo+ID4gPiArCQlyZXR1cm47DQo+ID4NCj4gPg0KPiA+IEhlcmUg
eW91IHNob3VsZCBvbmx5IHNldCBwc3IyX2FjdGl2ZSwgYWRkIGl0IHRvIHRoZSBib3R0b20gb2YN
Cj4gaW50ZWxfZmJjX3VwZGF0ZV9zdGF0ZV9jYWNoZS4NCj4gPiBUaGUgY2hlY2sgc2hvdWxkIG9u
bHkgYmUgZG9uZSBpbiBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKCkuDQoNCk9rLCBJIHdpbGwgZHJv
cCB0aGUgZXhwbGljaXQgcmV0dXJuIGhlcmUuDQoNCj4gPiA+ICsNCj4gPiA+IMKgCWNhY2hlLT5w
bGFuZS52aXNpYmxlID0gcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZTsNCj4gPiA+ICsNCj4gPiA+
IMKgCWlmICghY2FjaGUtPnBsYW5lLnZpc2libGUpDQo+ID4gPiDCoAkJcmV0dXJuOw0KPiA+ID4N
Cj4gPiA+DQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPiBA
QCAtNzk5LDYgKzgxMywxNiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0
cnVjdCBpbnRlbF9jcnRjDQo+ICpjcnRjKQ0KPiA+ID4gwqAJc3RydWN0IGludGVsX2ZiYyAqZmJj
ID0gJmRldl9wcml2LT5mYmM7DQo+ID4gPiDCoAlzdHJ1Y3QgaW50ZWxfZmJjX3N0YXRlX2NhY2hl
ICpjYWNoZSA9ICZmYmMtPnN0YXRlX2NhY2hlOw0KPiA+ID4NCj4gPiA+DQo+ID4gPg0KPiA+ID4N
Cj4gPiA+DQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPiArCS8qDQo+ID4gPiArCSAqIFRpZ2Vy
bGFrZSBpcyBub3Qgc3VwcG9ydGluZyBGQkMgd2l0aCBQU1IyLg0KPiA+ID4gKwkgKiBSZWNvbW1l
bmRhdGlvbiBpcyB0byBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQNCj4gPiA+ICsJICog
QnNwZWM6IDUwNDIyIEhTRDogMTQwMTAyNjAwMDINCj4gPiA+ICsJICovDQo+ID4gPiArCWlmIChm
YmMtPnN0YXRlX2NhY2hlLnBzcjJfYWN0aXZlICYmIElTX1RJR0VSTEFLRShkZXZfcHJpdikpIHsN
Cj4gPiA+ICsJCWZiYy0+bm9fZmJjX3JlYXNvbiA9ICJub3Qgc3VwcG9ydGVkIHdpdGggUFNSMiI7
DQo+ID4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gPiArCX0NCj4gPiA+ICsNCj4gPiA+IMKgCWlm
ICghaW50ZWxfZmJjX2Nhbl9lbmFibGUoZGV2X3ByaXYpKQ0KPiA+ID4gwqAJCXJldHVybiBmYWxz
ZTsNCj4gPiA+DQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4g
Pg0KPiA+ID4gQEAgLTEyNzMsNiArMTI5NywxMSBAQCB2b2lkIGludGVsX2ZiY19lbmFibGUoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsDQo+ID4gPiDCoAlpZiAoIWNhY2hlLT5w
bGFuZS52aXNpYmxlKQ0KPiA+ID4gwqAJCWdvdG8gb3V0Ow0KPiA+ID4NCj4gPiA+DQo+ID4gPg0K
PiA+ID4NCj4gPiA+DQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPiArCWlmIChmYmMtPnN0YXRl
X2NhY2hlLnBzcjJfYWN0aXZlICYmIElTX1RJR0VSTEFLRShkZXZfcHJpdikpIHsNCj4gPiA+ICsJ
CWZiYy0+bm9fZmJjX3JlYXNvbiA9ICJub3Qgc3VwcG9ydGVkIHdpdGggUFNSMiI7DQo+ID4gPiAr
CQlnb3RvIG91dDsNCj4gPiA+ICsJfQ0KPiANCj4gQWxzbyBubyBuZWVkIHRvIGNoZWNrIGl0IGhl
cmUsIG9ubHkgaW4gaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZS4NCj4gV2UgYWxyZWFkeSBhbGxvY2F0
ZSB0aGUgY2ZiIGV2ZW4gd2hlbiBvdGhlciByZWFzb25zIGRvIG5vdCBhbGxvdyBGQkMgdG8gYmUN
Cj4gYWN0aXZhdGVkLg0KDQpPayBnb3QgaXQsIHdpbGwgZHJvcCB0aGUgY2hlY2sgaGVyZSBhcyB3
ZWxsLg0KDQpUaGFua3MgSm9zZSBmb3IgdGhlIGZlZWRiYWNrLCB3aWxsIHJlLXNlbmQgdGhlIG5l
eHQgdmVyc2lvbiB3aXRoIHVwZGF0ZXMuDQoNClJlZ2FyZHMsDQpVbWEgU2hhbmthcg0KPiA+ID4g
Kw0KPiA+ID4gwqAJaWYgKGludGVsX2ZiY19hbGxvY19jZmIoZGV2X3ByaXYsDQo+ID4gPiDCoAkJ
CQlpbnRlbF9mYmNfY2FsY3VsYXRlX2NmYl9zaXplKGRldl9wcml2LCBjYWNoZSksDQo+ID4gPiDC
oAkJCQlwbGFuZV9zdGF0ZS0+aHcuZmItPmZvcm1hdC0+Y3BwWzBdKSkgeyBkaWZmIC0tZ2l0DQo+
ID4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oDQo+ID4gPiBpbmRleCAxNWJlOGRlYmFlNTQuLmY0ZTA4YzFhNTg2NyAx
MDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiA+IEBAIC00MTYsNiAr
NDE2LDcgQEAgc3RydWN0IGludGVsX2ZiYyB7DQo+ID4gPiDCoAkJdTE2IGdlbjlfd2FfY2ZiX3N0
cmlkZTsNCj4gPiA+IMKgCQl1MTYgaW50ZXJ2YWw7DQo+ID4gPiDCoAkJczggZmVuY2VfaWQ7DQo+
ID4gPiArCQlib29sIHBzcjJfYWN0aXZlOw0KPiA+ID4gwqAJfSBzdGF0ZV9jYWNoZTsNCj4gPiA+
DQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPg0KPiA+ID4g
wqAJLyoNCj4gPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
