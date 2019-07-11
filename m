Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4006A64F82
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:19:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4F8B89B84;
	Thu, 11 Jul 2019 00:19:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E2E889B84
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:19:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:19:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="177003802"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga002.jf.intel.com with ESMTP; 10 Jul 2019 17:19:14 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jul 2019 17:19:14 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 fmsmsx116.amr.corp.intel.com ([169.254.2.161]) with mapi id 14.03.0439.000;
 Wed, 10 Jul 2019 17:19:14 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v2 15/25] drm/i915/tgl: Add gmbus gpio pin to port mapping
Thread-Index: AQHVNeNEBewRlNet5UavxJU9gxG0TqbFBhkA
Date: Thu, 11 Jul 2019 00:19:13 +0000
Message-ID: <12d0d7db4904d62d4e5b73895c8b614254bc3e1f.camel@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-16-lucas.demarchi@intel.com>
In-Reply-To: <20190708231629.9296-16-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.133]
Content-ID: <2881398BB123FE47B91785036612C820@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 15/25] drm/i915/tgl: Add gmbus gpio pin
 to port mapping
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
ZGQgZGVmYXVsdCBHUElPIHBpbiBtYXBwaW5nIGZvciBhbGwgcG9ydHMuIFRpZ2VyIExha2UgaGFz
IDMgY29tYm9waHkNCj4gcG9ydHMgYW5kIDYgVEMgcG9ydHMsIGdwaW8gcGluMS0zIGFyZSBtYXBw
ZWQgdG8gY29tYm9waHkgJiBwaW45LTE0DQo+IGFyZQ0KPiBtYXBwZWQgdG8gVEMgcG9ydHMuDQoN
ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCg0KPiANCj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNv
bT4NCj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gU2lnbmVk
LW9mZi1ieTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4NCj4gU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAgMiAr
Kw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jICAgfCAyMA0K
PiArKysrKysrKysrKysrKysrKystLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCAgICAgICAgICAgICAgfCAgNCArKystDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBpbmRleCAyNzBiMWYxOGRlZGQuLjIzMWQ4NTk1ODQ1
YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmgNCj4gQEAgLTQ1LDYgKzQ1LDggQEAgZW51bSBpOTE1X2dwaW8gew0KPiAgCUdQSU9LLA0KPiAg
CUdQSU9MLA0KPiAgCUdQSU9NLA0KPiArCUdQSU9OLA0KPiArCUdQSU9PLA0KPiAgfTsNCj4gIA0K
PiAgLyoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Z21idXMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZ21idXMuYw0K
PiBpbmRleCA0ZjZhOWJkNWFmNDcuLmI0MmM3OWFlYTYxYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZ21idXMuYw0KPiBAQCAtOTQsMTEgKzk0LDI1IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgZ21idXNfcGluIGdtYnVzX3BpbnNfbWNjW10gPQ0KPiB7DQo+ICAJ
W0dNQlVTX1BJTl85X1RDMV9JQ1BdID0geyAiZHBjIiwgR1BJT0ogfSwNCj4gIH07DQo+ICANCj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgZ21idXNfcGluIGdtYnVzX3BpbnNfdGdwW10gPSB7DQo+ICsJ
W0dNQlVTX1BJTl8xX0JYVF0gPSB7ICJkcGEiLCBHUElPQiB9LA0KPiArCVtHTUJVU19QSU5fMl9C
WFRdID0geyAiZHBiIiwgR1BJT0MgfSwNCj4gKwlbR01CVVNfUElOXzNfQlhUXSA9IHsgImRwYyIs
IEdQSU9EIH0sDQo+ICsJW0dNQlVTX1BJTl85X1RDMV9JQ1BdID0geyAidGMxIiwgR1BJT0ogfSwN
Cj4gKwlbR01CVVNfUElOXzEwX1RDMl9JQ1BdID0geyAidGMyIiwgR1BJT0sgfSwNCj4gKwlbR01C
VVNfUElOXzExX1RDM19JQ1BdID0geyAidGMzIiwgR1BJT0wgfSwNCj4gKwlbR01CVVNfUElOXzEy
X1RDNF9JQ1BdID0geyAidGM0IiwgR1BJT00gfSwNCj4gKwlbR01CVVNfUElOXzEzX1RDNV9UR1Bd
ID0geyAidGM1IiwgR1BJT04gfSwNCj4gKwlbR01CVVNfUElOXzE0X1RDNl9UR1BdID0geyAidGM2
IiwgR1BJT08gfSwNCj4gK307DQo+ICsNCj4gIC8qIHBpbiBpcyBleHBlY3RlZCB0byBiZSB2YWxp
ZCAqLw0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBnbWJ1c19waW4gKmdldF9nbWJ1c19waW4oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmRldl9wcml2LA0KPiAgCQkJCQkgICAgIHVuc2lnbmVk
IGludCBwaW4pDQo+ICB7DQo+IC0JaWYgKEhBU19QQ0hfTUNDKGRldl9wcml2KSkNCj4gKwlpZiAo
SEFTX1BDSF9UR1AoZGV2X3ByaXYpKQ0KPiArCQlyZXR1cm4gJmdtYnVzX3BpbnNfdGdwW3Bpbl07
DQo+ICsJZWxzZSBpZiAoSEFTX1BDSF9NQ0MoZGV2X3ByaXYpKQ0KPiAgCQlyZXR1cm4gJmdtYnVz
X3BpbnNfbWNjW3Bpbl07DQo+ICAJZWxzZSBpZiAoSEFTX1BDSF9JQ1AoZGV2X3ByaXYpKQ0KPiAg
CQlyZXR1cm4gJmdtYnVzX3BpbnNfaWNwW3Bpbl07DQo+IEBAIC0xMTksNyArMTMzLDkgQEAgYm9v
bCBpbnRlbF9nbWJ1c19pc192YWxpZF9waW4oc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LA0KPiAgew0KPiAgCXVuc2lnbmVkIGludCBzaXplOw0KPiAgDQo+IC0JaWYgKEhBU19Q
Q0hfTUNDKGRldl9wcml2KSkNCj4gKwlpZiAoSEFTX1BDSF9UR1AoZGV2X3ByaXYpKQ0KPiArCQlz
aXplID0gQVJSQVlfU0laRShnbWJ1c19waW5zX3RncCk7DQo+ICsJZWxzZSBpZiAoSEFTX1BDSF9N
Q0MoZGV2X3ByaXYpKQ0KPiAgCQlzaXplID0gQVJSQVlfU0laRShnbWJ1c19waW5zX21jYyk7DQo+
ICAJZWxzZSBpZiAoSEFTX1BDSF9JQ1AoZGV2X3ByaXYpKQ0KPiAgCQlzaXplID0gQVJSQVlfU0la
RShnbWJ1c19waW5zX2ljcCk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBpbmRleCA0
NTg4ZGY5ZTExZGUuLmM1NTRkZjY5ZjI4OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+IEBAIC0zMjU0LDggKzMyNTQsMTAgQEAgZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQgew0KPiAg
I2RlZmluZSAgIEdNQlVTX1BJTl8xMF9UQzJfSUNQCTEwDQo+ICAjZGVmaW5lICAgR01CVVNfUElO
XzExX1RDM19JQ1AJMTENCj4gICNkZWZpbmUgICBHTUJVU19QSU5fMTJfVEM0X0lDUAkxMg0KPiAr
I2RlZmluZSAgIEdNQlVTX1BJTl8xM19UQzVfVEdQCTEzDQo+ICsjZGVmaW5lICAgR01CVVNfUElO
XzE0X1RDNl9UR1AJMTQNCj4gIA0KPiAtI2RlZmluZSAgIEdNQlVTX05VTV9QSU5TCTEzIC8qIGlu
Y2x1ZGluZyAwICovDQo+ICsjZGVmaW5lICAgR01CVVNfTlVNX1BJTlMJMTUgLyogaW5jbHVkaW5n
IDAgKi8NCj4gICNkZWZpbmUgR01CVVMxCQkJX01NSU8oZGV2X3ByaXYtPmdwaW9fbW1pb19iYXNl
DQo+ICsgMHg1MTA0KSAvKiBjb21tYW5kL3N0YXR1cyAqLw0KPiAgI2RlZmluZSAgIEdNQlVTX1NX
X0NMUl9JTlQJKDEgPDwgMzEpDQo+ICAjZGVmaW5lICAgR01CVVNfU1dfUkRZCQkoMSA8PCAzMCkN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
