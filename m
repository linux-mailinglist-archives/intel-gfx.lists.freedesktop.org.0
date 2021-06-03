Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5D739A28C
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 15:54:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDCC96E188;
	Thu,  3 Jun 2021 13:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A92E6E188
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 13:54:06 +0000 (UTC)
IronPort-SDR: aCUGBk90Ujl7tWMKIqsf2FnJ67WN2P3SmwhePgPZk8unFE7enSt7rjEKdIb5ccsWDS6UL0NfgO
 PX6UTspdFmmg==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="191388737"
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="191388737"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 06:54:00 -0700
IronPort-SDR: Zh/K0xQ9SMfyrcnSyHIEQDLKU6o2H8Y9COkdUeqHMwzmyZyznG+j+wN/0SNFvFMiF4TxJqDHgs
 i4XlJst6Y88w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="550698355"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jun 2021 06:54:00 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 3 Jun 2021 06:53:59 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 3 Jun 2021 19:23:57 +0530
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.2242.008;
 Thu, 3 Jun 2021 19:23:57 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in DSC
 disable
Thread-Index: AQHXWEe6skhHkfzNn0WckWuDaBw3jasBidmAgAATcoCAAA8sgIAAHPKAgACEyeA=
Date: Thu, 3 Jun 2021 13:53:57 +0000
Message-ID: <0935357a1cd94cc7a115eca8e7a5fce9@intel.com>
References: <20210603065356.15435-1-vandita.kulkarni@intel.com>
 <eedaa66fa17944aeb96aa353c58db2e9@intel.com>
 <1e70025aa4e04a5396721ad4e7609340@intel.com> <87czt3p9oc.fsf@intel.com>
 <86877ca0c9ff4ebab0b269b91b6c3979@intel.com>
In-Reply-To: <86877ca0c9ff4ebab0b269b91b6c3979@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in
 DSC disable
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3Vsa2FybmksIFZhbmRp
dGEgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgSnVuZSAz
LCAyMDIxIDQ6NTUgUE0NCj4gVG86IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
PjsgU2FhcmluZW4sIEphbmkNCj4gPGphbmkuc2FhcmluZW5AaW50ZWwuY29tPjsgaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFu
bmFAaW50ZWwuY29tPjsgTmF2YXJlLCBNYW5hc2kgRA0KPiA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4NCj4gU3ViamVjdDogUkU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvZHNjOiBS
ZW1vdmUgcmVkdW5kYW50IGNoZWNrcyBpbiBEU0MNCj4gZGlzYWJsZQ0KPiANCj4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPg0KPiA+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDMsIDIwMjEgMzoxMSBQTQ0KPiA+
IFRvOiBLdWxrYXJuaSwgVmFuZGl0YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+OyBTYWFy
aW5lbiwgSmFuaQ0KPiA+IDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFA
aW50ZWwuY29tPjsgTmF2YXJlLCBNYW5hc2kgRA0KPiA+IDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwu
Y29tPg0KPiA+IFN1YmplY3Q6IFJFOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2RzYzog
UmVtb3ZlIHJlZHVuZGFudCBjaGVja3MNCj4gPiBpbiBEU0MgZGlzYWJsZQ0KPiA+DQo+ID4gT24g
VGh1LCAwMyBKdW4gMjAyMSwgIkt1bGthcm5pLCBWYW5kaXRhIiA8dmFuZGl0YS5rdWxrYXJuaUBp
bnRlbC5jb20+DQo+ID4gd3JvdGU6DQo+ID4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gPiA+PiBGcm9tOiBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+DQo+
ID4gPj4gU2VudDogVGh1cnNkYXksIEp1bmUgMywgMjAyMSAxOjA3IFBNDQo+ID4gPj4gVG86IEt1
bGthcm5pLCBWYW5kaXRhIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT47IGludGVsLQ0KPiA+
ID4+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+PiBDYzogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gPj4gU3ViamVjdDogUkU6IFtJbnRlbC1nZnhdIFtQ
QVRDSF0gZHJtL2k5MTUvZHNjOiBSZW1vdmUgcmVkdW5kYW50DQo+ID4gPj4gY2hlY2tzIGluIERT
QyBkaXNhYmxlDQo+ID4gPj4NCj4gPiA+PiBIaSwNCj4gPiA+PiA+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+ID4gPj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZz4gT24NCj4gPiA+PiA+IEJlaGFsZiBPZiBWYW5kaXRhIEt1bGth
cm5pDQo+ID4gPj4gPiBTZW50OiB0b3JzdGFpIDMuIGtlc8Oka3V1dGEgMjAyMSA5LjU0DQo+ID4g
Pj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4+ID4gQ2M6IE5p
a3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+ID4+ID4gU3ViamVjdDogW0lu
dGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9kc2M6IFJlbW92ZSByZWR1bmRhbnQNCj4gPiA+PiA+
IGNoZWNrcyBpbiBEU0MgZGlzYWJsZQ0KPiA+ID4+ID4NCj4gPiA+PiA+IFRoZXJlIGNhbiBiZSBh
IGNoYW5jZSB0aGF0IHByZSBvcyBoYXMgZW5hYmxlZCBEU0MgYW5kIGRyaXZlcidzDQo+ID4gPj4g
PiBjb21wdXRlIGNvbmZpZyB3b3VsZCBub3QgbmVlZCBkc2MgdG8gYmUgZW5hYmxlZCwgaW4gc3Vj
aCBjYXNlIGlmDQo+ID4gPj4gPiB3ZSBjaGVjayBvbiBjb21wdXRlIGNvbmZpZydzIGNvbXByZXNz
aW9uIHN0YXRlIHRvIGRpc2FibGUsIHdlDQo+ID4gPj4gPiBtaWdodCBlbmQgdXAgaW4gc3RhdGUN
Cj4gPiA+PiBtaXNtYXRjaC4NCj4gPiA+Pg0KPiA+ID4+IEkgYXNzdW1lIHRoaXMgZml4ZXMgcmVh
bCBnaXRsYWIgaXNzdWUgdG9vPw0KPiA+ID4gT2theSwgd2lsbCBhZGQgdGhlIHRhZw0KPiA+ID4g
Q2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVz
LzM1MzcNCj4gPg0KPiA+IFNlZSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzg3ZnN4enA5cXgu
ZnNmQGludGVsLmNvbQ0KPiA+DQo+ID4gVGhlIHByb2JsZW0gaXMgd2l0aCAtPmJpZ2pvaW5lciwg
bm90IHRoZSBlbnRpcmUgc3RhdGVtZW50Lg0KPiBUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0
LCB0cnVlIHRoYXQgYmlnam9pbmVyIG5vdCBiZWluZyBlbmFibGVkIHdpbGwgc3RvcCBkc2MNCj4g
ZGlzYWJsaW5nLg0KPiBUaGUgYmlnam9pbmVyIGNoZWNrIHdhcyBtYWtpbmcgdGhlIGVudGlyZSBj
b25kaXRpb24gY2hlY2sgdW5uZWNlc3NhcnkuDQo+IA0KPiBXaWxsIHVwZGF0ZSBhbmQgcmVmbG9h
dC4NCg0KSGkgSmFuaS9WYW5kaXRhLA0KDQpGb3IgdW5jb21wcmVzc2VkIGJpZ2pvaW5lciBjYXNl
IGlmIHdlIHdhbnQgdG8gdXNlIHRoZSBzYW1lIGZ1bmN0aW9uIHRvIGNsZWFyIHRoZSBkc2NfY3Ry
bDEgcmVnaXN0ZXIgd2UgbWF5IG5lZWQgdG8gcmVtb3ZlIGJvdGggdGhlIGNvbmRpdGlvbiBjaGVj
ay4NCkFzIGZvciB1bmNvbXByZXNzZWQgYmlnam9pbmVyIGNhc2UsIGNvbXByZXNzaW9uX2VuYWJs
ZSBXaWxsIGJlIDAgYW5kIHdpbGwgYmxvY2sgaW4gY2xlYXJpbmcgdGhlIGRzc19jdGwxX3JlZy4N
Cg0KUmVnYXJkcywNCkFuaW1lc2gNCj4gDQo+IFRoYW5rcywNCj4gVmFuZGl0YQ0KPiA+DQo+ID4N
Cj4gPiBCUiwNCj4gPiBKYW5pLg0KPiA+DQo+ID4gPg0KPiA+ID4gVGhhbmtzLA0KPiA+ID4gVmFu
ZGl0YQ0KPiA+ID4+DQo+ID4gPj4gPg0KPiA+ID4+ID4gU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBL
dWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQo+ID4gPj4gPiAtLS0NCj4gPiA+
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyB8IDQgLS0tLQ0K
PiA+ID4+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQ0KPiA+ID4+ID4NCj4gPiA+
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2Mu
Yw0KPiA+ID4+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0K
PiA+ID4+ID4gaW5kZXggMTljZDk1MzFjMTE1Li5iMDVhOTYwMTFkOTMgMTAwNjQ0DQo+ID4gPj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiA+ID4+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gPiA+
PiA+IEBAIC0xMTYxLDEwICsxMTYxLDYgQEAgdm9pZCBpbnRlbF9kc2NfZGlzYWJsZShjb25zdCBz
dHJ1Y3QNCj4gPiA+PiA+IGludGVsX2NydGNfc3RhdGUNCj4gPiA+PiA+ICpvbGRfY3J0Y19zdGF0
ZSkNCj4gPiA+PiA+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKG9s
ZF9jcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiA+ID4+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gPiA+PiA+DQo+ID4g
Pj4gPiAtCWlmICghKG9sZF9jcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlICYmDQo+
ID4gPj4gPiAtCSAgICAgIG9sZF9jcnRjX3N0YXRlLT5iaWdqb2luZXIpKQ0KPiA+ID4+ID4gLQkJ
cmV0dXJuOw0KPiA+ID4+ID4gLQ0KPiA+ID4+ID4gIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwg
ZHNzX2N0bDFfcmVnKG9sZF9jcnRjX3N0YXRlKSwgMCk7DQo+ID4gPj4gPiAgCWludGVsX2RlX3dy
aXRlKGRldl9wcml2LCBkc3NfY3RsMl9yZWcob2xkX2NydGNfc3RhdGUpLCAwKTsgIH0NCj4gPiA+
PiA+IC0tDQo+ID4gPj4gPiAyLjIxLjAuNS5nYWViNTgyYQ0KPiA+ID4+ID4NCj4gPiA+PiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gPj4gPiBJ
bnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gPj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+ID4gPj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA0KPiA+DQo+ID4gLS0NCj4gPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3Bl
biBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
