Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A7C64F84
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9290B89C0A;
	Thu, 11 Jul 2019 00:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7545989C0A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:21:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:21:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="186261998"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jul 2019 17:21:33 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jul 2019 17:21:33 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.183]) with mapi id 14.03.0439.000;
 Wed, 10 Jul 2019 17:21:32 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v2 20/25] drm/i915/tgl: Add vbt value mapping for DDC
 Bus pin
Thread-Index: AQHVNeNFg7bj1nrH10K7UgSHt20ieabFBr+A
Date: Thu, 11 Jul 2019 00:21:32 +0000
Message-ID: <db156f51e2302e25ca5c011271eb353d94a77fca.camel@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-21-lucas.demarchi@intel.com>
In-Reply-To: <20190708231629.9296-21-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.133]
Content-ID: <D3AEB4A78FA2194899992728E09D63A7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 20/25] drm/i915/tgl: Add vbt value
 mapping for DDC Bus pin
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

T24gTW9uLCAyMDE5LTA3LTA4IGF0IDE2OjE2IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IE1haGVzaCBLdW1hciA8bWFoZXNoMS5rdW1hckBpbnRlbC5jb20+DQo+IA0KPiBB
ZGQgVkJULXZhbHVlIHRvIEREQyBidXMgcGluIG1hcHBpbmcgZm9yIHRoZSBzYW1lLg0KDQpXZSBo
YXZlIGFsbW9zdCB0aGUgc2FtZSBpbmZvcm1hdGlvbiBpbiAzIGRpZmZlcmVudCBwbGFjZXMgYXMg
cGVyIHBhdGNoDQoxNSwgMTYgYW5kIHRoaXMgb25lID0vDQoNCkFueXdheXMgbGV0cyBub3QgYmxv
Y2sgVEdMIHRvIGRvIHJlZmFjdG9yczoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWFoZXNo
IEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgMTcgKysrKysrKysrKysrKysr
Ky0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCB8ICAz
ICsrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBp
bmRleCAwYzk4MDgxMzJkNjcuLmEwOGJjNGY2MTdjOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gQEAgLTEzNTQsMTIgKzEzNTQsMjcgQEAgc3Rh
dGljIGNvbnN0IHU4IG1jY19kZGNfcGluX21hcFtdID0gew0KPiAgCVtNQ0NfRERDX0JVU19ERElf
Q10gPSBHTUJVU19QSU5fOV9UQzFfSUNQLA0KPiAgfTsNCj4gIA0KPiArc3RhdGljIGNvbnN0IHU4
IHRncF9kZGNfcGluX21hcFtdID0gew0KPiArCVtJQ0xfRERDX0JVU19ERElfQV0gPSBHTUJVU19Q
SU5fMV9CWFQsDQo+ICsJW0lDTF9ERENfQlVTX0RESV9CXSA9IEdNQlVTX1BJTl8yX0JYVCwNCj4g
KwlbVEdMX0REQ19CVVNfRERJX0NdID0gR01CVVNfUElOXzNfQlhULA0KPiArCVtJQ0xfRERDX0JV
U19QT1JUXzFdID0gR01CVVNfUElOXzlfVEMxX0lDUCwNCj4gKwlbSUNMX0REQ19CVVNfUE9SVF8y
XSA9IEdNQlVTX1BJTl8xMF9UQzJfSUNQLA0KPiArCVtJQ0xfRERDX0JVU19QT1JUXzNdID0gR01C
VVNfUElOXzExX1RDM19JQ1AsDQo+ICsJW0lDTF9ERENfQlVTX1BPUlRfNF0gPSBHTUJVU19QSU5f
MTJfVEM0X0lDUCwNCj4gKwlbVEdMX0REQ19CVVNfUE9SVF81XSA9IEdNQlVTX1BJTl8xM19UQzVf
VEdQLA0KPiArCVtUR0xfRERDX0JVU19QT1JUXzZdID0gR01CVVNfUElOXzE0X1RDNl9UR1AsDQo+
ICt9Ow0KPiArDQo+ICBzdGF0aWMgdTggbWFwX2RkY19waW4oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LCB1OCB2YnRfcGluKQ0KPiAgew0KPiAgCWNvbnN0IHU4ICpkZGNfcGluX21h
cDsNCj4gIAlpbnQgbl9lbnRyaWVzOw0KPiAgDQo+IC0JaWYgKEhBU19QQ0hfTUNDKGRldl9wcml2
KSkgew0KPiArCWlmIChIQVNfUENIX1RHUChkZXZfcHJpdikpIHsNCj4gKwkJZGRjX3Bpbl9tYXAg
PSB0Z3BfZGRjX3Bpbl9tYXA7DQo+ICsJCW5fZW50cmllcyA9IEFSUkFZX1NJWkUodGdwX2RkY19w
aW5fbWFwKTsNCj4gKwl9IGVsc2UgaWYgKEhBU19QQ0hfTUNDKGRldl9wcml2KSkgew0KPiAgCQlk
ZGNfcGluX21hcCA9IG1jY19kZGNfcGluX21hcDsNCj4gIAkJbl9lbnRyaWVzID0gQVJSQVlfU0la
RShtY2NfZGRjX3Bpbl9tYXApOw0KPiAgCX0gZWxzZSBpZiAoSEFTX1BDSF9JQ1AoZGV2X3ByaXYp
KSB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zi
dF9kZWZzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZz
LmgNCj4gaW5kZXggMmY0ODk0ZTlhMDNkLi45M2Y1YzlkMjA0ZDYgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgNCj4gQEAgLTMxMCwxMCAr
MzEwLDEzIEBAIGVudW0gdmJ0X2dtYnVzX2RkaSB7DQo+ICAJRERDX0JVU19ERElfRiwNCj4gIAlJ
Q0xfRERDX0JVU19ERElfQSA9IDB4MSwNCj4gIAlJQ0xfRERDX0JVU19ERElfQiwNCj4gKwlUR0xf
RERDX0JVU19ERElfQywNCj4gIAlJQ0xfRERDX0JVU19QT1JUXzEgPSAweDQsDQo+ICAJSUNMX0RE
Q19CVVNfUE9SVF8yLA0KPiAgCUlDTF9ERENfQlVTX1BPUlRfMywNCj4gIAlJQ0xfRERDX0JVU19Q
T1JUXzQsDQo+ICsJVEdMX0REQ19CVVNfUE9SVF81LA0KPiArCVRHTF9ERENfQlVTX1BPUlRfNiwN
Cj4gIAlNQ0NfRERDX0JVU19ERElfQSA9IDB4MSwNCj4gIAlNQ0NfRERDX0JVU19ERElfQiwNCj4g
IAlNQ0NfRERDX0JVU19ERElfQyA9IDB4NCwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
