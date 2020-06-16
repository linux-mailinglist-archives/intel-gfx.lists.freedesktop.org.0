Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6E31FBBC1
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 18:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 121716E183;
	Tue, 16 Jun 2020 16:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88D6A6E183
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 16:33:06 +0000 (UTC)
IronPort-SDR: p8UkIY1x/1CD7v7eC5tT1ldkxITg34u+kv8qT7Mk9Y4rz9u6vz7YNhUfK3VxLAHw6M2YSZRk+r
 tWNN+lC87yuA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 09:32:48 -0700
IronPort-SDR: 7g8ems5e4PNHktaHxsAaj6gDdIgWOPOvnT5WoMOUfXNQeaOtzXgKDPjkxE7xqkf+Y/p95J+XzY
 6FxJVkMKRYBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="308514144"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga008.jf.intel.com with ESMTP; 16 Jun 2020 09:32:48 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jun 2020 09:32:47 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.85]) with mapi id 14.03.0439.000;
 Tue, 16 Jun 2020 09:32:47 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 1/6] drm/i915/tgl+: Use the correct DP_TP_* register
 instances in MST encoders
Thread-Index: AQHWQ+kZrP1rv1OnP0KTIXpcGqbmv6jb5XGA
Date: Tue, 16 Jun 2020 16:32:46 +0000
Message-ID: <4c40d13cfdb9cfe4d59eb04f27828b597949c54e.camel@intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
In-Reply-To: <20200616141855.746-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.14.160]
Content-ID: <C939FE52541DED4C970431183ABD70BC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/tgl+: Use the correct DP_TP_*
 register instances in MST encoders
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

T24gVHVlLCAyMDIwLTA2LTE2IGF0IDE3OjE4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE1T
VCBlbmNvZGVycyBtdXN0IHVzZSB0aGUgbWFzdGVyIE1TVCB0cmFuc2NvZGVyJ3MgRFBfVFBfU1RB
VFVTIGFuZA0KPiBEUF9UUF9DT05UUk9MIHJlZ2lzdGVycy4gQXRtLCBkdXJpbmcgdGhlIEhXIHJl
YWRvdXQgb2YgYSBzbGF2ZQ0KPiB0cmFuc2NvZGVyJ3MgQ1JUQyBzdGF0ZSB3ZSByZXNldCB0aGVz
ZSByZWdpc3RlciBhZGRyZXNzZXMgaW4NCj4gaW50ZWxfZHA6OnJlZ3MuZHBfdHBfKiB0byB0aGUg
c2xhdmUgdHJhbnNjb2RlcidzIERQX1RQXyogcmVnaXN0ZXINCj4gYWRkcmVzc2VzIGluY29ycmVj
dGx5OyBmaXggdGhpcy4NCj4gDQo+IFRoaXMgaXNzdWUgbGVkIGF0IGxlYXN0IHRvDQo+ICdUaW1l
ZCBvdXQgd2FpdGluZyBmb3IgQUNUIHNlbnQgd2hlbiBkaXNhYmxpbmcnDQo+IGVycm9ycyBkdXJp
bmcgb3V0cHV0IGRpc2FibGluZyBpbiBhIG11bHRpcGxlIE1TVCBzdHJlYW0gY29uZmlnLg0KDQpD
YW4geW91IHBvaW50IHRvIHBsYWNlIHdoZXJlIGRwX3RwX2N0bCBpcyB1c2VkIGFuZCBjYXVzZSB0
aGlzPw0KQWxsIHRoZSBNU1QgY29kZSBwYXRocyB1c2VzIHRoZSBkcF90cF9jdGwgb2YgdGhlIG1h
aW4gaW50ZWxfZHAodGhlIG9uZSB0aGF0IGlzIG5vdCBhIG1zdCBjb25uZWN0b3IpLg0KDQo+IA0K
PiBUaGlzIGNoYW5nZSByZXBsYWNlcw0KPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvcGF0Y2gvMzY5NTc3Lz9zZXJpZXM9NzgxOTMmcmV2PTENCj4gd2hpY2gganVzdCBwYXBlcmVk
IG92ZXIgdGhlIHByb2JsZW0uDQo+IA0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYyB8IDE1ICsrKysrKysrKystLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMNCj4gaW5kZXggY2E3YmIyMjk0ZDJiLi43M2Q2Y2MyOTI5MWEgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtNDE5MywxMSAr
NDE5Myw2IEBAIHZvaWQgaW50ZWxfZGRpX2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsDQo+ICAJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCB0cmFuc2NvZGVy
X2lzX2RzaShjcHVfdHJhbnNjb2RlcikpKQ0KPiAgCQlyZXR1cm47DQo+ICANCj4gLQlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMikgew0KPiAtCQlpbnRlbF9kcC0+cmVncy5kcF90cF9jdGwg
PSBUR0xfRFBfVFBfQ1RMKGNwdV90cmFuc2NvZGVyKTsNCj4gLQkJaW50ZWxfZHAtPnJlZ3MuZHBf
dHBfc3RhdHVzID0gVEdMX0RQX1RQX1NUQVRVUyhjcHVfdHJhbnNjb2Rlcik7DQo+IC0JfQ0KPiAt
DQo+ICAJaW50ZWxfZHNjX2dldF9jb25maWcoZW5jb2RlciwgcGlwZV9jb25maWcpOw0KPiAgDQo+
ICAJdGVtcCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFRSQU5TX0RESV9GVU5DX0NUTChjcHVf
dHJhbnNjb2RlcikpOw0KPiBAQCAtNDI5OSw2ICs0Mjk0LDE2IEBAIHZvaWQgaW50ZWxfZGRpX2dl
dF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCWJyZWFrOw0KPiAg
CX0NCj4gIA0KPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7DQo+ICsJCWVudW0g
dHJhbnNjb2RlciB0cmFuc2NvZGVyID0NCj4gKwkJCWludGVsX2RwX21zdF9pc19zbGF2ZV90cmFu
cyhwaXBlX2NvbmZpZykgPw0KPiArCQkJcGlwZV9jb25maWctPm1zdF9tYXN0ZXJfdHJhbnNjb2Rl
ciA6DQo+ICsJCQlwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXI7DQo+ICsNCj4gKwkJaW50ZWxf
ZHAtPnJlZ3MuZHBfdHBfY3RsID0gVEdMX0RQX1RQX0NUTCh0cmFuc2NvZGVyKTsNCj4gKwkJaW50
ZWxfZHAtPnJlZ3MuZHBfdHBfc3RhdHVzID0gVEdMX0RQX1RQX1NUQVRVUyh0cmFuc2NvZGVyKTsN
Cj4gKwl9DQoNCkFsc28gbm90IHN1cmUgaG93IGNoYW5nZSBvbmx5IGluIHRoZSBjb25maWcgcmVh
ZG91dCB3b3VsZCBmaXggdGhlIGlzc3VlLCBJRldJIGRvbid0IGVuYWJsZSBNU1Qgc28gd2hlbiBp
OTE1IHRha2VzIG92ZXIgYSBmdWxsIG1vZGVzZXQgd2lsbCBoYXBwZW4gdG8NCmVuYWJsZSBNU1Qg
YW5kIG9ubHkgZHBfdHBfY3RsIG9mIHRoZSBtYWluIGludGVsX2RwKHRoZSBvbmUgdGhhdCBpcyBu
b3QgYSBtc3QgY29ubmVjdG9yKSB3aWxsIGJlIHNldCwgY2hlY2sgdGdsX2RkaV9wcmVfZW5hYmxl
X2RwKCkuDQoNCj4gKw0KPiAgCXBpcGVfY29uZmlnLT5oYXNfYXVkaW8gPQ0KPiAgCQlpbnRlbF9k
ZGlfaXNfYXVkaW9fZW5hYmxlZChkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIpOw0KPiAgDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
