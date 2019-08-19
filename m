Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E491F95006
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 23:43:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD4FA6E2D7;
	Mon, 19 Aug 2019 21:43:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D6D86E2D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 21:43:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 14:43:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,406,1559545200"; d="scan'208";a="185723115"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Aug 2019 14:43:26 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.69]) by
 FMSMSX105.amr.corp.intel.com ([169.254.4.93]) with mapi id 14.03.0439.000;
 Mon, 19 Aug 2019 14:43:26 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Sanitize PHY state during
 display core uninit
Thread-Index: AQHVVBjb0ON/IdHDaUWyEausAmLkf6cDe2cA
Date: Mon, 19 Aug 2019 21:43:25 +0000
Message-ID: <be0b669361724aba423ba209c87980b6e5ecff3f.camel@intel.com>
References: <20190816095523.15800-1-imre.deak@intel.com>
In-Reply-To: <20190816095523.15800-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <901FE9F950B0E346B3E57B60D1603774@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Sanitize PHY state during display
 core uninit
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTA4LTE2IGF0IDEyOjU1ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRv
IHdvcmsgYXJvdW5kIGEgRE1DL1B1bml0IGlzc3VlIG9uIElDTCB3aGVyZSB0aGUgZHJpdmVyJ3MN
Cj4gSUNMX1BPUlRfQ09NUF9EVzgvSVJFRkdFTiBQSFkgc2V0dGluZyBpcyBsb3N0IHdoZW4gZW50
ZXJpbmcvZXhpdGluZw0KPiBEQzYNCj4gc3RhdGUsIG1ha2Ugc3VyZSB0byByZWluaXQgdGhlIFBI
WSB3aGVuZXZlciBkaXNhYmxpbmcgREMgc3RhdGVzLg0KPiBTaW1pbGFybHkgdGhlIGRyaXZlcidz
IFBIWS9EQlVGL0NEQ0xLIHNldHRpbmdzIHNob3VsZCBoYXZlIGJlZW4NCj4gcHJlc2VydmVkDQo+
IGFjcm9zcyBEQzUvNiB0cmFuc2l0aW9ucywgc28gY2hlY2sgdGhpcyBvbiBhbGwgcGxhdGZvcm1z
Lg0KPiANCj4gVGhpcyBnZXRzIHJpZCBvZiB0aGUgZm9sbG93aW5nIFdBUk4gZHVyaW5nIHN1c3Bl
bmQ6DQo+IENvbWJvIFBIWSBBIEhXIHN0YXRlIGNoYW5nZWQgdW5leHBlY3RlZGx5DQoNClJldmll
d2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAt
LS0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgIHwg
MTcgKysrKysrKysrKystLQ0KPiAtLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IGluZGV4IDM3NGI3NTYwMjE0MS4u
NWYyMzk1NTg1YWJjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBAQCAtOTY2LDggKzk2Niw3IEBAIHN0YXRpYyB2
b2lkIGdlbjlfYXNzZXJ0X2RidWZfZW5hYmxlZChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpDQo+ICAJICAgICAiVW5leHBlY3RlZCBEQnVmIHBvd2VyIHBvd2VyIHN0YXRlICgw
eCUwOHgpXG4iLCB0bXApOw0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgdm9pZCBnZW45X2RjX29mZl9w
b3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYsDQo+
IC0JCQkJCSAgc3RydWN0IGk5MTVfcG93ZXJfd2VsbA0KPiAqcG93ZXJfd2VsbCkNCj4gK3N0YXRp
YyB2b2lkIGdlbjlfZGlzYWJsZV9kY19zdGF0ZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4g
KmRldl9wcml2KQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSBjZGNsa19zdGF0
ZSA9IHt9Ow0KPiAgDQo+IEBAIC05OTEsNiArOTkwLDEyIEBAIHN0YXRpYyB2b2lkIGdlbjlfZGNf
b2ZmX3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwNCj4gIAkJaW50ZWxfY29tYm9fcGh5X2luaXQoZGV2X3ByaXYpOw0KPiAgfQ0KPiAgDQo+ICtz
dGF0aWMgdm9pZCBnZW45X2RjX29mZl9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZQ0KPiAqZGV2X3ByaXYsDQo+ICsJCQkJCSAgc3RydWN0IGk5MTVfcG93ZXJfd2VsbA0K
PiAqcG93ZXJfd2VsbCkNCj4gK3sNCj4gKwlnZW45X2Rpc2FibGVfZGNfc3RhdGVzKGRldl9wcml2
KTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgZ2VuOV9kY19vZmZfcG93ZXJfd2VsbF9kaXNh
YmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdiwNCj4gIAkJCQkJICAgc3Ry
dWN0IGk5MTVfcG93ZXJfd2VsbA0KPiAqcG93ZXJfd2VsbCkNCj4gIHsNCj4gQEAgLTQ1MjEsNyAr
NDUyNiw3IEBAIHN0YXRpYyB2b2lkIHNrbF9kaXNwbGF5X2NvcmVfdW5pbml0KHN0cnVjdA0KPiBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAlzdHJ1Y3QgaTkxNV9wb3dlcl9kb21haW5z
ICpwb3dlcl9kb21haW5zID0gJmRldl9wcml2LQ0KPiA+cG93ZXJfZG9tYWluczsNCj4gIAlzdHJ1
Y3QgaTkxNV9wb3dlcl93ZWxsICp3ZWxsOw0KPiAgDQo+IC0JZ2VuOV9zZXRfZGNfc3RhdGUoZGV2
X3ByaXYsIERDX1NUQVRFX0RJU0FCTEUpOw0KPiArCWdlbjlfZGlzYWJsZV9kY19zdGF0ZXMoZGV2
X3ByaXYpOw0KPiAgDQo+ICAJZ2VuOV9kYnVmX2Rpc2FibGUoZGV2X3ByaXYpOw0KPiAgDQo+IEBA
IC00NTgyLDcgKzQ1ODcsNyBAQCBzdGF0aWMgdm9pZCBieHRfZGlzcGxheV9jb3JlX3VuaW5pdChz
dHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJc3RydWN0IGk5MTVfcG93
ZXJfZG9tYWlucyAqcG93ZXJfZG9tYWlucyA9ICZkZXZfcHJpdi0NCj4gPnBvd2VyX2RvbWFpbnM7
DQo+ICAJc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqd2VsbDsNCj4gIA0KPiAtCWdlbjlfc2V0X2Rj
X3N0YXRlKGRldl9wcml2LCBEQ19TVEFURV9ESVNBQkxFKTsNCj4gKwlnZW45X2Rpc2FibGVfZGNf
c3RhdGVzKGRldl9wcml2KTsNCj4gIA0KPiAgCWdlbjlfZGJ1Zl9kaXNhYmxlKGRldl9wcml2KTsN
Cj4gIA0KPiBAQCAtNDY0Miw3ICs0NjQ3LDcgQEAgc3RhdGljIHZvaWQgY25sX2Rpc3BsYXlfY29y
ZV91bmluaXQoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCXN0cnVj
dCBpOTE1X3Bvd2VyX2RvbWFpbnMgKnBvd2VyX2RvbWFpbnMgPSAmZGV2X3ByaXYtDQo+ID5wb3dl
cl9kb21haW5zOw0KPiAgCXN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwgKndlbGw7DQo+ICANCj4gLQln
ZW45X3NldF9kY19zdGF0ZShkZXZfcHJpdiwgRENfU1RBVEVfRElTQUJMRSk7DQo+ICsJZ2VuOV9k
aXNhYmxlX2RjX3N0YXRlcyhkZXZfcHJpdik7DQo+ICANCj4gIAkvKiAxLiBEaXNhYmxlIGFsbCBk
aXNwbGF5IGVuZ2luZSBmdW5jdGlvbnMgLT4gYXJlYWR5IGRvbmUgKi8NCj4gIA0KPiBAQCAtNDcw
OSw3ICs0NzE0LDcgQEAgc3RhdGljIHZvaWQgaWNsX2Rpc3BsYXlfY29yZV91bmluaXQoc3RydWN0
DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCXN0cnVjdCBpOTE1X3Bvd2VyX2Rv
bWFpbnMgKnBvd2VyX2RvbWFpbnMgPSAmZGV2X3ByaXYtDQo+ID5wb3dlcl9kb21haW5zOw0KPiAg
CXN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwgKndlbGw7DQo+ICANCj4gLQlnZW45X3NldF9kY19zdGF0
ZShkZXZfcHJpdiwgRENfU1RBVEVfRElTQUJMRSk7DQo+ICsJZ2VuOV9kaXNhYmxlX2RjX3N0YXRl
cyhkZXZfcHJpdik7DQo+ICANCj4gIAkvKiAxLiBEaXNhYmxlIGFsbCBkaXNwbGF5IGVuZ2luZSBm
dW5jdGlvbnMgLT4gYXJlYWR5IGRvbmUgKi8NCj4gIA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
