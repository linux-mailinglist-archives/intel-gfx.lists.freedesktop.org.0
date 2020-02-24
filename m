Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80825169FE5
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 09:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90E246E1BA;
	Mon, 24 Feb 2020 08:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 858436E1BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 08:22:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 00:22:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,479,1574150400"; d="scan'208";a="255509721"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2020 00:22:09 -0800
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Feb 2020 00:22:08 -0800
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Feb 2020 00:22:08 -0800
Received: from BGSMSX107.gar.corp.intel.com ([169.254.9.58]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.133]) with mapi id 14.03.0439.000;
 Mon, 24 Feb 2020 13:52:05 +0530
From: "Laxminarayan Bharadiya, Pankaj"
 <pankaj.laxminarayan.bharadiya@intel.com>
To: "Laxminarayan Bharadiya, Pankaj"
 <pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [PATCH] drm/i915/display: Fix inverted WARN_ON
Thread-Index: AQHV6nBUmU2GCJmubkajVTyzpa3kKqgp/QVAgAADd+A=
Date: Mon, 24 Feb 2020 08:22:04 +0000
Message-ID: <E92BA18FDE0A5B43B7B3DA7FCA0312860576FCF7@BGSMSX107.gar.corp.intel.com>
References: <20200223173959.3885742-1-chris@chris-wilson.co.uk>
 <E92BA18FDE0A5B43B7B3DA7FCA0312860576FC17@BGSMSX107.gar.corp.intel.com>
In-Reply-To: <E92BA18FDE0A5B43B7B3DA7FCA0312860576FC17@BGSMSX107.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix inverted WARN_ON
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBMYXht
aW5hcmF5YW4gQmhhcmFkaXlhLCBQYW5rYWoNCj4gU2VudDogMjQgRmVicnVhcnkgMjAyMCAxMzoz
OQ0KPiBUbzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+OyBOaWt1bGEs
IEphbmkNCj4gPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5
MTUvZGlzcGxheTogRml4IGludmVydGVkIFdBUk5fT04NCj4gDQo+IA0KPiANCj4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPg0KPiA+IFNlbnQ6IDIzIEZlYnJ1YXJ5IDIwMjAgMjM6MTANCj4gPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az47IExheG1pbmFyYXlhbiBCaGFyYWRpeWEsDQo+ID4gUGFu
a2FqIDxwYW5rYWoubGF4bWluYXJheWFuLmJoYXJhZGl5YUBpbnRlbC5jb20+OyBOaWt1bGEsIEph
bmkNCj4gPiA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtQQVRDSF0gZHJt
L2k5MTUvZGlzcGxheTogRml4IGludmVydGVkIFdBUk5fT04NCj4gPg0KPiA+IFJlc3RvcmUgdGhl
IHByZXZpb3VzIFdBUk5fT04oY29uZCkgc28gdGhhdCB3ZSBkb24ndCBjb21wbGFpbiBhYm91dA0K
PiA+IHBvb3Igb2xkIENoZXJyeXZpZXcuDQo+ID4NCj4gPiBGaXhlczogZWIwMjBjYTNkNDNmICgi
ZHJtL2k5MTUvZGlzcGxheS9kcDogTWFrZSBXQVJOKiBkcm0gc3BlY2lmaWMNCj4gPiB3aGVyZSBk
cm1fZGV2aWNlIHB0ciBpcyBhdmFpbGFibGUiKQ0KPiANCj4gRml4ZXMgc2VlbXMgdG8gYmUgd3Jv
bmcuDQo+IA0KPiBUaGUgY29tbWl0ICIgZWIwMjBjYTNkNDNmIiBqdXN0IGRvZXMgdGhlIHJlcGxh
Y2VtZW50IGFuZCBkb2VzIG5vdCBtb2RpZnkNCj4gYW55IGV4aXN0aW5nIGNvbmRpdGlvbi4NCj4g
DQo+IC0gICAgICAgaWYgKFdBUk5fT04oIUlTX1ZBTExFWVZJRVcoZGV2X3ByaXYpICYmDQo+ICFJ
U19DSEVSUllWSUVXKGRldl9wcml2KSAmJg0KPiAtICAgICAgICAgICAgICAgICAgICFJU19HRU45
X0xQKGRldl9wcml2KSkpDQo+ICsgICAgICAgaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJt
LCAhSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgJiYNCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
SVNfQ0hFUlJZVklFVyhkZXZfcHJpdikgJiYNCg0KT29wcywgbG9va3MgbGlrZSBJIGFjY2lkZW50
YWxseSByZW1vdmVkICEgIHdoaWxlIGZpeGluZyBjaGVja3BhdGNoIDgwIGNoYXIgd2FybmluZ3Mg
KCAqISpJU19DSEVSUllWSUVXKGRldl9wcml2KSkg4pi5Lg0KDQotDQpQYW5rYWoNCg0KDQo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICFJU19HRU45X0xQKGRldl9wcml2KSkpDQo+IA0KPiBXaWxs
IHlvdSBwbGVhc2UgZG91YmxlIGNoZWNrIGFuZCBjb25maXJtLg0KPiANCj4gVGhhbmtzLA0KPiBQ
YW5rYWoNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+DQo+ID4gQ2M6IFBhbmthaiBCaGFyYWRpeWEgPHBhbmthai5sYXhtaW5hcmF5
YW4uYmhhcmFkaXlhQGludGVsLmNvbT4NCj4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jIHwgNyArKysrLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMNCj4gPiBpbmRleCAyZjkzMzI2YzE2YTMuLmU4YmViZDI3MDA0ZCAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBAQCAt
MTAyMyw5ICsxMDIzLDEwIEBAIHZvaWQgaW50ZWxfcG93ZXJfc2VxdWVuY2VyX3Jlc2V0KHN0cnVj
dA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KSAgew0KPiA+ICAJc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXI7DQo+ID4NCj4gPiAtCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYt
PmRybSwgIUlTX1ZBTExFWVZJRVcoZGV2X3ByaXYpICYmDQo+ID4gLQkJCUlTX0NIRVJSWVZJRVco
ZGV2X3ByaXYpICYmDQo+ID4gLQkJCSFJU19HRU45X0xQKGRldl9wcml2KSkpDQo+ID4gKwlpZiAo
ZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sDQo+ID4gKwkJCSEoSVNfVkFMTEVZVklFVyhkZXZf
cHJpdikgfHwNCj4gPiArCQkJICBJU19DSEVSUllWSUVXKGRldl9wcml2KSB8fA0KPiA+ICsJCQkg
IElTX0dFTjlfTFAoZGV2X3ByaXYpKSkpDQo+ID4gIAkJcmV0dXJuOw0KPiA+DQo+ID4gIAkvKg0K
PiA+IC0tDQo+ID4gMi4yNS4xDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
