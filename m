Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B449E464B26
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 11:04:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F28E16E8B8;
	Wed,  1 Dec 2021 10:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E2326E8E4
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 10:04:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223305186"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="223305186"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 02:03:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="459966774"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga006.jf.intel.com with ESMTP; 01 Dec 2021 02:03:37 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 10:03:36 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 10:03:36 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 07/20] drm/i915/fbc: Pass around FBC instance
 instead of crtc
Thread-Index: AQHX4SeoPWBGpg9v70qV2P2IGlM2zqwdcwkw
Date: Wed, 1 Dec 2021 10:03:36 +0000
Message-ID: <1adf14d0b616499ea8d6d4ad4f1b532c@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/20] drm/i915/fbc: Pass around FBC
 instance instead of crtc
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciAyNCwgMjAyMSAxOjM3IFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAwNy8yMF0gZHJtL2k5MTUvZmJjOiBQYXNzIGFyb3VuZCBGQkMgaW5zdGFuY2UNCj4g
aW5zdGVhZCBvZiBjcnRjDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gUGFzcyB0aGUgRkJDIGluc3RhbmNlIGluc3RlYWQg
b2YgdGhlIGNydGMgdG8gYSBidW5jaCBvZiBwbGFjZXMuDQo+IA0KPiBXZSBhbHNvIGFkanVzdCBp
bnRlbF9mYmNfcG9zdF91cGRhdGUoKSB0byBkbyB0aGUNCj4gaW50ZWxfZmJjX2dldF9yZWdfcGFy
YW1zKCkgdGhpbmdzIGluc3RlYWQgb2YgZG9pbmcgaXQgZnJvbSB0aGUgbG93ZXIgbGV2ZWwNCj4g
ZnVuY3Rpb24gKHdoaWNoIGFsc28gZ2V0cyBjYWxsZWQgZm9yIGZyb250IGJ1ZmZlciB0cmFja2lu
ZykuDQo+IE5vdGhpbmcgaW4gdGhlcmUgd2lsbCBjaGFuZ2UgZHVyaW5nIGZyb250IGJ1ZmZlciB1
cGRhdGVzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jIHwgMjkgKysrKysrKysrKy0tLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXggODYyNTgyNWNiZWU4Li5k
YjM5MGMyOWM2NjUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYw0KPiBAQCAtMTA5MSwxMCArMTA5MSw5IEBAIHN0YXRpYyBpbnQgaW50ZWxfZmJjX2NoZWNr
X3BsYW5lKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCXJldHVybiAw
Ow0KPiAgfQ0KPiANCj4gLXN0YXRpYyBib29sIGludGVsX2ZiY19jYW5fYWN0aXZhdGUoc3RydWN0
IGludGVsX2NydGMgKmNydGMpDQo+ICtzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRl
KHN0cnVjdCBpbnRlbF9mYmMgKmZiYykNCj4gIHsNCj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiAtCXN0cnVjdCBpbnRlbF9mYmMg
KmZiYyA9ICZpOTE1LT5mYmM7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBm
YmMtPmk5MTU7DQo+ICAJc3RydWN0IGludGVsX2ZiY19zdGF0ZSAqY2FjaGUgPSAmZmJjLT5zdGF0
ZV9jYWNoZTsNCj4gDQo+ICAJaWYgKCFpbnRlbF9mYmNfY2FuX2VuYWJsZShmYmMpKQ0KPiBAQCAt
MTE4Niw3ICsxMTg1LDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9mbGlwX251a2Uoc3Ry
dWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJaWYgKGRybV9hdG9taWNfY3J0
Y19uZWVkc19tb2Rlc2V0KCZuZXdfY3J0Y19zdGF0ZS0+dWFwaSkpDQo+ICAJCXJldHVybiBmYWxz
ZTsNCj4gDQo+IC0JaWYgKCFpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKGNydGMpKQ0KPiArCWlmICgh
aW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShmYmMpKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiAg
CWlmICghb2xkX2ZiIHx8ICFuZXdfZmIpDQo+IEBAIC0xMjgwLDE4ICsxMjc5LDEyIEBAIHN0YXRp
YyB2b2lkIF9faW50ZWxfZmJjX2Rpc2FibGUoc3RydWN0IGludGVsX2ZiYw0KPiAqZmJjKQ0KPiAg
CWZiYy0+Y3J0YyA9IE5VTEw7DQo+ICB9DQo+IA0KPiAtc3RhdGljIHZvaWQgX19pbnRlbF9mYmNf
cG9zdF91cGRhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ICtzdGF0aWMgdm9pZCBfX2lu
dGVsX2ZiY19wb3N0X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfZmJjICpmYmMpDQo+ICB7DQo+IC0Jc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4g
LQlzdHJ1Y3QgaW50ZWxfZmJjICpmYmMgPSAmaTkxNS0+ZmJjOw0KPiArCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gZmJjLT5pOTE1Ow0KPiANCj4gIAlkcm1fV0FSTl9PTigmaTkxNS0+
ZHJtLCAhbXV0ZXhfaXNfbG9ja2VkKCZmYmMtPmxvY2spKTsNCj4gDQo+IC0JaWYgKGZiYy0+Y3J0
YyAhPSBjcnRjKQ0KPiAtCQlyZXR1cm47DQo+IC0NCj4gLQlmYmMtPmZsaXBfcGVuZGluZyA9IGZh
bHNlOw0KPiAtDQo+ICAJaWYgKCFpOTE1LT5wYXJhbXMuZW5hYmxlX2ZiYykgew0KPiAgCQlpbnRl
bF9mYmNfZGVhY3RpdmF0ZShmYmMsICJkaXNhYmxlZCBhdCBydW50aW1lIHBlciBtb2R1bGUNCj4g
cGFyYW0iKTsNCj4gIAkJX19pbnRlbF9mYmNfZGlzYWJsZShmYmMpOw0KPiBAQCAtMTI5OSw5ICsx
MjkyLDcgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9mYmNfcG9zdF91cGRhdGUoc3RydWN0IGludGVs
X2NydGMNCj4gKmNydGMpDQo+ICAJCXJldHVybjsNCj4gIAl9DQo+IA0KPiAtCWludGVsX2ZiY19n
ZXRfcmVnX3BhcmFtcyhmYmMsIGNydGMpOw0KPiAtDQo+IC0JaWYgKCFpbnRlbF9mYmNfY2FuX2Fj
dGl2YXRlKGNydGMpKQ0KPiArCWlmICghaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShmYmMpKQ0KPiAg
CQlyZXR1cm47DQo+IA0KPiAgCWlmICghZmJjLT5idXN5X2JpdHMpDQo+IEBAIC0xMzIyLDcgKzEz
MTMsMTEgQEAgdm9pZCBpbnRlbF9mYmNfcG9zdF91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ICAJCXJldHVybjsNCj4gDQo+ICAJbXV0ZXhfbG9jaygmZmJjLT5s
b2NrKTsNCj4gLQlfX2ludGVsX2ZiY19wb3N0X3VwZGF0ZShjcnRjKTsNCj4gKwlpZiAoZmJjLT5j
cnRjID09IGNydGMpIHsNCj4gKwkJZmJjLT5mbGlwX3BlbmRpbmcgPSBmYWxzZTsNCj4gKwkJaW50
ZWxfZmJjX2dldF9yZWdfcGFyYW1zKGZiYywgY3J0Yyk7DQo+ICsJCV9faW50ZWxfZmJjX3Bvc3Rf
dXBkYXRlKGZiYyk7DQo+ICsJfQ0KPiAgCW11dGV4X3VubG9jaygmZmJjLT5sb2NrKTsNCj4gIH0N
Cj4gDQo+IEBAIC0xMzc2LDcgKzEzNzEsNyBAQCB2b2lkIGludGVsX2ZiY19mbHVzaChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gIAkJaWYgKGZiYy0+YWN0aXZlKQ0KPiAgCQkJaW50
ZWxfZmJjX251a2UoZmJjKTsNCj4gIAkJZWxzZSBpZiAoIWZiYy0+ZmxpcF9wZW5kaW5nKQ0KPiAt
CQkJX19pbnRlbF9mYmNfcG9zdF91cGRhdGUoZmJjLT5jcnRjKTsNCj4gKwkJCV9faW50ZWxfZmJj
X3Bvc3RfdXBkYXRlKGZiYyk7DQo+ICAJfQ0KPiANCj4gIG91dDoNCj4gLS0NCj4gMi4zMi4wDQoN
Cg==
