Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7602CA867
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 17:43:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C8966E844;
	Tue,  1 Dec 2020 16:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F35C56E83F
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 16:43:22 +0000 (UTC)
IronPort-SDR: cG4Kpc8PsKxOGs4BMl4++5B0ebCv552irFdRauGLjVwsOog1ckHhwENzd6fOtWgdL3BVfAL7Hu
 I/5lK+lA/qmA==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="160633106"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="160633106"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 08:43:20 -0800
IronPort-SDR: WVN6d69SnM/xvKgBQmc+cgqfSXo32Tso7ytbuHmrLnC8pNp3CdWiTz76XmghmFW8ejBR4Remau
 YUtv9I2wOr8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="335168786"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 01 Dec 2020 08:43:19 -0800
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 08:43:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 22:13:15 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 1 Dec 2020 08:43:13 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v5 1/2] drm/i915/display/tgl: Disable FBC with PSR2
Thread-Index: AQHWx/0Ce2NUtvQTw06HMZT4rIJcnqni+FQA
Date: Tue, 1 Dec 2020 16:43:13 +0000
Message-ID: <91b9b8a64eec22179d5522cbc6570e737ed5139f.camel@intel.com>
References: <20201201164749.32702-1-uma.shankar@intel.com>
 <20201201164749.32702-2-uma.shankar@intel.com>
In-Reply-To: <20201201164749.32702-2-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <F765AC2564430447995E9F912B90B968@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v5 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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

T24gVHVlLCAyMDIwLTEyLTAxIGF0IDIyOjE3ICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToNCj4g
VGhlcmUgYXJlIHNvbWUgY29ybmVyIGNhc2VzIHdydCB1bmRlcnJ1biB3aGVuIHdlIGVuYWJsZQ0K
PiBGQkMgd2l0aCBQU1IyIG9uIFRHTC4gUmVjb21tZW5kYXRpb24gZnJvbSBoYXJkd2FyZSBpcyB0
bw0KPiBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQuDQo+IA0KPiBCc3BlYzogNTA0MjIg
SFNEOiAxNDAxMDI2MDAwMg0KPiANCj4gdjI6IEFkZGVkIHBzcjIgZW5hYmxlZCBjaGVjayBmcm9t
IGNydGNfc3RhdGUgKEFuc2h1bWFuKQ0KPiBBZGRlZCBCc3BlYyBsaW5rIGFuZCBIU0QgcmVmZXJu
ZWNlcyAoSm9zZSkNCj4gDQo+IHYzOiBNb3ZlZCB0aGUgbG9naWMgdG8gZGlzYWJsZSBmYmMgdG8g
aW50ZWxfZmJjX3VwZGF0ZV9zdGF0ZV9jYWNoZQ0KPiBhbmQgcmVtb3ZlZCB0aGUgY3J0Yy0+Y29u
ZmlnIHVzYWdlcywgYXMgcGVyIFZpbGxlJ3MgcmVjb21tZW5kYXRpb24uDQo+IA0KPiB2NDogSW50
cm9kdWNlZCBhIHZhcmlhYmxlIGluIGZiYyBzdGF0ZV9jYWNoZSBpbnN0ZWFkIG9mIHRoZSBlYXJs
aWVyDQo+IHBsYW5lLnZpc2libGUgV0EsIGFzIHN1Z2dlc3RlZCBieSBKb3NlLg0KPiANCj4gdjU6
IERyb3BwZWQgYW4gZXh0cmEgY2hlY2sgZm9yIGZiYyBpbiBpbnRlbF9mYmNfZW5hYmxlIGFuZCBh
ZGRyZXNzZWQNCj4gcmV2aWV3IGNvbW1lbnRzIGJ5IEpvc2UuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMTIgKysrKysrKysrKysrDQo+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8ICAxICsNCj4gwqAyIGZp
bGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCBhNWIwNzI4MTZhN2IuLjYxMWNhZGM1YzcwYSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IEBAIC03
NDIsNiArNzQyLDggQEAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX3VwZGF0ZV9zdGF0ZV9jYWNoZShz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gwqAJCWNhY2hlLT5mZW5jZV9pZCA9IHBsYW5lX3N0
YXRlLT52bWEtPmZlbmNlLT5pZDsNCj4gwqAJZWxzZQ0KPiDCoAkJY2FjaGUtPmZlbmNlX2lkID0g
LTE7DQo+ICsNCj4gKwljYWNoZS0+cHNyMl9hY3RpdmUgPSBjcnRjX3N0YXRlLT5oYXNfcHNyMjsN
Cj4gwqB9DQo+IMKgDQo+IA0KPiANCj4gDQo+IMKgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2NmYl9z
aXplX2NoYW5nZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiBAQCAtNzk5
LDYgKzgwMSwxNiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjKQ0KPiDCoAlzdHJ1Y3QgaW50ZWxfZmJjICpmYmMgPSAmZGV2X3ByaXYt
PmZiYzsNCj4gwqAJc3RydWN0IGludGVsX2ZiY19zdGF0ZV9jYWNoZSAqY2FjaGUgPSAmZmJjLT5z
dGF0ZV9jYWNoZTsNCj4gwqANCj4gDQo+IA0KPiANCj4gKwkvKg0KPiArCSAqIFRpZ2VybGFrZSBp
cyBub3Qgc3VwcG9ydGluZyBGQkMgd2l0aCBQU1IyLg0KPiArCSAqIFJlY29tbWVuZGF0aW9uIGlz
IHRvIGtlZXAgdGhpcyBjb21iaW5hdGlvbiBkaXNhYmxlZA0KPiArCSAqIEJzcGVjOiA1MDQyMiBI
U0Q6IDE0MDEwMjYwMDAyDQo+ICsJICovDQo+ICsJaWYgKGZiYy0+c3RhdGVfY2FjaGUucHNyMl9h
Y3RpdmUgJiYgSVNfVElHRVJMQUtFKGRldl9wcml2KSkgew0KPiArCQlmYmMtPm5vX2ZiY19yZWFz
b24gPSAibm90IHN1cHBvcnRlZCB3aXRoIFBTUjIiOw0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsJ
fQ0KDQpOaXRwaWNrOiBhbGwgbmV3IHJlc3RyaWN0aW9ucyBhcmUgYWRkZWQgYXQgdGhlIGJvdHRv
bSBsZXRzIGZvbGxvdyBpdC4NCldpdGggdGhpcyBjaGFuZ2UgeW91IGNhbiBhZGQgbXkgcnZiIGlu
IGJvdGggcGF0Y2hlcy4NClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCg0KDQoNCj4gKw0KPiDCoAlpZiAoIWludGVsX2ZiY19jYW5fZW5h
YmxlKGRldl9wcml2KSkNCj4gwqAJCXJldHVybiBmYWxzZTsNCj4gwqANCj4gDQo+IA0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IGluZGV4IDE1YmU4ZGViYWU1NC4uZjRlMDhjMWE1ODY3
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gQEAgLTQxNiw2ICs0MTYsNyBAQCBz
dHJ1Y3QgaW50ZWxfZmJjIHsNCj4gwqAJCXUxNiBnZW45X3dhX2NmYl9zdHJpZGU7DQo+IMKgCQl1
MTYgaW50ZXJ2YWw7DQo+IMKgCQlzOCBmZW5jZV9pZDsNCj4gKwkJYm9vbCBwc3IyX2FjdGl2ZTsN
Cj4gwqAJfSBzdGF0ZV9jYWNoZTsNCj4gwqANCj4gDQo+IA0KPiANCj4gwqAJLyoNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
