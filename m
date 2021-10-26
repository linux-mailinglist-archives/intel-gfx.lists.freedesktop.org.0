Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA7543BB16
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 21:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47B8D89D5F;
	Tue, 26 Oct 2021 19:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAF1689D5F
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 19:39:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="216908496"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="216908496"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 12:39:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="447244170"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 26 Oct 2021 12:39:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 12:39:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 12:39:55 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 26 Oct 2021 12:39:55 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [PATCH v2 3/9] drm/i915: Disable all planes before modesetting
 any pipes
Thread-Index: AQHXxzA61jDhClsb5UeCyDbu1uIE+KvmKz8A
Date: Tue, 26 Oct 2021 19:39:55 +0000
Message-ID: <7820ad54bbd50cf94f5fe99fb627bd19cd05b6e4.camel@intel.com>
References: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
 <20211022103304.24164-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20211022103304.24164-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <27BA04CCBF787A4CA71A0358A0BE2171@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915: Disable all planes before
 modesetting any pipes
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

T24gRnJpLCAyMDIxLTEwLTIyIGF0IDEzOjMyICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTGV0J3MgZGlzYWJsZSBwbGFuZXMgb24gYWxsIHBpcGVzIGFmZmVjdGVkIGJ5IHRoZSBt
b2Rlc2V0IGJlZm9yZQ0KPiB3ZSBzdGFydCBkb2luZyB0aGUgYWN0dWFsIG1vZGVzZXQuIFRoaXMg
bWVhbnMgd2UgaGF2ZSBsZXNzDQo+IHJhbmRvbSBwbGFuZXMgZW5hYmxlZCBkdXJpbmcgdGhlIG1v
ZGVzZXQsIGFuZCBpdCBhbHNvIG1pcnJvcnMNCj4gd2hhdCB3ZSBhbHJlYWR5IGRvIHdoZW4gZW5h
YmxpbmcgcGlwZXMgb24gc2tsKyBzaW5jZSB3ZSBlbmFibGUNCj4gcGxhbmVzIG9uIGFsbCBwaXBl
cyBhcyB0aGUgdmVyeSBsYXN0IHN0ZXAuIEFzIGEgYm9udXMgd2UgYWxzbw0KPiBudWtlIGEgYnVu
Y2ggb2cgYmlnam9pbmVyIHNwZWNpYWwgY2FzaW5nLg0KPiANCj4gSSd2ZSBvY2Nhc2lvbmFsbHkg
cG9uZGVyZWQgYWJvdXQgZ29pbmcgZXZlbiBmdXJoZXIgaGVyZSBhbmQNCj4gZG9pbmcgdGhlIHBy
ZV9wbGFuZV91cGRhdGUoKSBzdHVmZiBmb3IgYWxsIHBpcGVzIGZpcnN0LCB0aGVuDQo+IGFjdHVh
bGx5IGRpc2FibGluZyB0aGUgcGxhbmVzLCBhbmQgZmluYWxseSBydW5uaW5nIHRoZSByZXN0DQo+
IG9mIHRoZSBtb2Rlc2V0IHNlcXVlbmNlLiBUaGlzIHdvdWxkIHBvdGVudGlhbGx5IGFsbG93DQo+
IHBhcmFsbGVsaXppbmcgYWxsIHRoZSBleHRyYSB2Ymxhbmsgd2FpdHMgYWNyb3NzIG11bHRpcGxl
IHBpcGVzLA0KPiBhbmQgd291bGQgbWFrZSB0aGUgcGxhbmUgZGlzYWJsZSBldmVuIG1vcmUgYXRv
bWljLiBCdXQgbGV0J3MNCj4gZ28gb25lIHN0ZXAgYSB0aW1lIGhlcmUuDQo+IA0KDQpSZXZpZXdl
ZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4g
Q2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBSZXZp
ZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4NCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDI4ICsrKysrKysrKy0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0
aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAzZDJhMWNiYTc4YzEuLjFkOTIwYmE4MzUy
MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gQEAgLTgyNTEsMTggKzgyNTEsMTMgQEAgc3RhdGljIHZvaWQgaW50ZWxfb2xkX2NydGNf
c3RhdGVfZGlzYWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICANCj4g
IAlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgb2xkX2NydGNfc3RhdGUtPmJpZ2pvaW5lcl9z
bGF2ZSk7DQo+ICANCj4gLQlpbnRlbF9jcnRjX2Rpc2FibGVfcGxhbmVzKHN0YXRlLCBjcnRjKTsN
Cj4gLQ0KPiAgCS8qDQo+ICAJICogV2Ugc3RpbGwgbmVlZCBzcGVjaWFsIGhhbmRsaW5nIGZvciBk
aXNhYmxpbmcgYmlnam9pbmVyIG1hc3Rlcg0KPiAgCSAqIGFuZCBzbGF2ZXMgc2luY2UgZm9yIHNs
YXZlIHdlIGRvIG5vdCBoYXZlIGVuY29kZXIgb3IgcGxscw0KPiAgCSAqIHNvIHdlIGRvbnQgbmVl
ZCB0byBkaXNhYmxlIHRob3NlLg0KPiAgCSAqLw0KPiAtCWlmIChvbGRfY3J0Y19zdGF0ZS0+Ymln
am9pbmVyKSB7DQo+IC0JCWludGVsX2NydGNfZGlzYWJsZV9wbGFuZXMoc3RhdGUsDQo+IC0JCQkJ
CSAgb2xkX2NydGNfc3RhdGUtPmJpZ2pvaW5lcl9saW5rZWRfY3J0Yyk7DQo+ICsJaWYgKG9sZF9j
cnRjX3N0YXRlLT5iaWdqb2luZXIpDQo+ICAJCW9sZF9jcnRjX3N0YXRlLT5iaWdqb2luZXJfbGlu
a2VkX2NydGMtPmFjdGl2ZSA9IGZhbHNlOw0KPiAtCX0NCj4gIA0KPiAgCS8qDQo+ICAJICogV2Ug
bmVlZCB0byBkaXNhYmxlIHBpcGUgQ1JDIGJlZm9yZSBkaXNhYmxpbmcgdGhlIHBpcGUsDQo+IEBA
IC04Mjg4LDYgKzgyODMsMTggQEAgc3RhdGljIHZvaWQgaW50ZWxfY29tbWl0X21vZGVzZXRfZGlz
YWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ICAJdTMyIGhhbmRsZWQg
PSAwOw0KPiAgCWludCBpOw0KPiAgDQo+ICsJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5f
c3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLA0KPiArCQkJCQkgICAgbmV3X2NydGNf
c3RhdGUsIGkpIHsNCj4gKwkJaWYgKCFpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNf
c3RhdGUpKQ0KPiArCQkJY29udGludWU7DQo+ICsNCj4gKwkJaWYgKCFvbGRfY3J0Y19zdGF0ZS0+
aHcuYWN0aXZlKQ0KPiArCQkJY29udGludWU7DQo+ICsNCj4gKwkJaW50ZWxfcHJlX3BsYW5lX3Vw
ZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICsJCWludGVsX2NydGNfZGlzYWJsZV9wbGFuZXMoc3RhdGUs
IGNydGMpOw0KPiArCX0NCj4gKw0KPiAgCS8qIE9ubHkgZGlzYWJsZSBwb3J0IHN5bmMgYW5kIE1T
VCBzbGF2ZXMgKi8NCj4gIAlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0
ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsDQo+ICAJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkg
ew0KPiBAQCAtODMwNiw3ICs4MzEzLDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfY29tbWl0X21vZGVz
ZXRfZGlzYWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ICAJCSAgICAh
aW50ZWxfZHBfbXN0X2lzX3NsYXZlX3RyYW5zKG9sZF9jcnRjX3N0YXRlKSkNCj4gIAkJCWNvbnRp
bnVlOw0KPiAgDQo+IC0JCWludGVsX3ByZV9wbGFuZV91cGRhdGUoc3RhdGUsIGNydGMpOw0KPiAg
CQlpbnRlbF9vbGRfY3J0Y19zdGF0ZV9kaXNhYmxlcyhzdGF0ZSwgb2xkX2NydGNfc3RhdGUsDQo+
ICAJCQkJCSAgICAgIG5ld19jcnRjX3N0YXRlLCBjcnRjKTsNCj4gIAkJaGFuZGxlZCB8PSBCSVQo
Y3J0Yy0+cGlwZSk7DQo+IEBAIC04MzIwLDE0ICs4MzI2LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxf
Y29tbWl0X21vZGVzZXRfZGlzYWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
DQo+ICAJCSAgICBvbGRfY3J0Y19zdGF0ZS0+Ymlnam9pbmVyX3NsYXZlKQ0KPiAgCQkJY29udGlu
dWU7DQo+ICANCj4gLQkJaW50ZWxfcHJlX3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+IC0J
CWlmIChvbGRfY3J0Y19zdGF0ZS0+Ymlnam9pbmVyKSB7DQo+IC0JCQlzdHJ1Y3QgaW50ZWxfY3J0
YyAqc2xhdmUgPQ0KPiAtCQkJCW9sZF9jcnRjX3N0YXRlLT5iaWdqb2luZXJfbGlua2VkX2NydGM7
DQo+IC0NCj4gLQkJCWludGVsX3ByZV9wbGFuZV91cGRhdGUoc3RhdGUsIHNsYXZlKTsNCj4gLQkJ
fQ0KPiAtDQo+ICAJCWlmIChvbGRfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQ0KPiAgCQkJaW50ZWxf
b2xkX2NydGNfc3RhdGVfZGlzYWJsZXMoc3RhdGUsIG9sZF9jcnRjX3N0YXRlLA0KPiAgCQkJCQkJ
ICAgICAgbmV3X2NydGNfc3RhdGUsIGNydGMpOw0KDQo=
