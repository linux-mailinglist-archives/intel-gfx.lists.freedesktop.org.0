Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F4ABD5A4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 01:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89CCF6EB11;
	Tue, 24 Sep 2019 23:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E58C86EB11
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 23:59:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 16:59:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,545,1559545200"; d="scan'208";a="179654610"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga007.jf.intel.com with ESMTP; 24 Sep 2019 16:59:03 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 24 Sep 2019 16:59:03 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX125.amr.corp.intel.com ([169.254.2.5]) with mapi id 14.03.0439.000;
 Tue, 24 Sep 2019 16:59:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 7/9] drm/i915/tgl: Fix dkl link training
Thread-Index: AQHVckjdnRTEPbDDQkqZLR21XbjnVac7cqCAgACGOgA=
Date: Tue, 24 Sep 2019 23:59:02 +0000
Message-ID: <7e992b6db12bef8584203458ed58f96de0e8096e.camel@intel.com>
References: <20190923195513.207536-1-jose.souza@intel.com>
 <20190923195513.207536-8-jose.souza@intel.com>
 <20190924155837.GC25906@ideak-desk.fi.intel.com>
In-Reply-To: <20190924155837.GC25906@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.200.160]
Content-ID: <2287D6B83AF1E7488DFD97B4A44FB7C5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 7/9] drm/i915/tgl: Fix dkl link training
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA5LTI0IGF0IDE4OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IE1vbiwgU2VwIDIzLCAyMDE5IGF0IDEyOjU1OjExUE0gLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUg
U291emENCj4gd3JvdGU6DQo+ID4gTGluayB0cmFpbmluZyBpcyBmYWlsbGluZyB3aGVuIHJ1bm5p
bmcgbGluayBhdCAyLjdHSHogYW5kIDEuNjJHSHoNCj4gPiBhbmQNCj4gPiBmb2xsb3dpbmcgQlNw
ZWMgcGxsIGFsZ29yaXRobS4NCj4gPiANCj4gPiBDb21wYXJpbmcgdGhlIHZhbHVlcyBjYWxjdWxh
dGVkIGFuZCB0aGUgb25lcyBmcm9tIHRoZSByZWZlcmVuY2UNCj4gPiB0YWJsZQ0KPiA+IGl0IGxv
b2tzIGxpa2UgTUdfQ0xLVE9QMl9DT1JFQ0xLQ1RMMV9BX0RJVlJBVElPIHNob3VsZCBub3QgYWx3
YXlzDQo+ID4gc2V0DQo+ID4gdG8gNS4gRm9yIERQIHBvcnRzIElDTCBtZyBwbGwgYWxnb3JpdGht
IHNldHMgaXQgdG8gMTAgb3IgNSBiYXNlZCBvbg0KPiA+IGRpdjIgdmFsdWUsIHRoYXQgbWF0Y2hl
cyB3aXRoIGRrbCBoYXJkY29kZWQgdGFibGUuDQo+ID4gDQo+ID4gU28gaW1wbGVtZW50aW5nIHRo
aXMgd2F5IGFzIGl0IHByb3ZlZCB0byB3b3JrIGluIEhXIGFuZCBsZWF2aW5nIGENCj4gPiBjb21t
ZW50IHNvIHdlIGtub3cgd2h5IGl0IGRvIG5vdCBtYXRjaCBCU3BlYy4NCj4gPiANCj4gPiBJc3N1
ZSByZXBvcnRlZCBvbiBCU3BlYyA0OTIwNC4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgNyArKysrKyst
DQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4g
PiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxf
bWdyLmMNCj4gPiBpbmRleCA0OTZkZjQwOTVhMjEuLjNjODgxZDRjZjk3MyAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiBA
QCAtMjYzMSw3ICsyNjMxLDEyIEBAIHN0YXRpYyBib29sIGljbF9tZ19wbGxfZmluZF9kaXZpc29y
cyhpbnQNCj4gPiBjbG9ja19raHosIGJvb2wgaXNfZHAsIGJvb2wgdXNlX3NzYywNCj4gPiAgDQo+
ID4gIAkJCWlmIChkaXYyID49IDIpIHsNCj4gPiAgCQkJCWlmIChpc19ka2wpIHsNCj4gPiAtCQkJ
CQlhX2RpdnJhdGlvID0gNTsNCj4gPiArCQkJCQkvKg0KPiA+ICsJCQkJCSAqIE5vdGU6IGFfZGl2
cmF0aW8gbm90DQo+ID4gbWF0Y2hpbmcgVEdMDQo+ID4gKwkJCQkJICogQlNwZWMgYWxnb3JpdGht
IGJ1dCBtYXRjaGluZw0KPiA+ICsJCQkJCSAqIGhhcmRjb2RlZCB2YWx1ZXMgYW5kIHdvcmtpbmcN
Cj4gPiBvbiBIVw0KPiA+ICsJCQkJCSAqLw0KPiA+ICsJCQkJCWFfZGl2cmF0aW8gPSAxMDsNCj4g
DQo+IFllcywgbWF0Y2hlcyB0aGUgaGFyZGNvZGVkIHZhbHVlcyBmb3IgQ0xLVE9QMl9IU0NMS0NU
TC9DT1JFQ0xLQ1RMMSwNCj4gd2l0aA0KPiB0aGUgZXhjZXB0aW9uIHRoYXQgdGhlIGhhcmRjb2Rl
ZCB2YWx1ZSBmb3IgQ0xLVE9QMl9IU0NMS0NUTCA1cDQgaXMNCj4gYWxzbw0KPiBpbmNvcnJlY3Qg
d3J0LiBkaXYyIHdpdGhpbiB0aGF0IChzaG91bGQgYmUgMSBidXQgaXQncyAyKS4NCj4gDQo+IEhv
d2V2ZXIgd2UgZG9uJ3QgaGF2ZSBhbnkgaGFyZGNvZGVkIHZhbHVlcyBpbiBCc3BlYyBmb3IgSERN
SSBleGNlcHQNCj4gZm9yDQo+IHRoZSA1Ljk0R2Jwcy9kaXYyPTEgY2FzZS4gU28gdW50aWwgb3Ro
ZXJ3aXNlIHByb3ZlbiwgZm9yIEhETUkvZGl2Mj49Mg0KPiBJDQo+IHdvdWxkbid0IGNoYW5nZSB0
aGUgdmFsdWUsIHJhdGhlciBoYXZlIHRoZSBzYW1lIGxvZ2ljIGFzIGZvciBJQ0wgdGhhdA0KPiBp
cw0KPiBpc19kcCA/IDEwIDogNTsNCg0KSSB3YXMgdHJ5aW5nIHRvIGF2b2lkIHRvdWNoIGFueSBI
RE1JIGNhbGN1bGF0aW9uIGFzIEkgY2FuJ3QgdGVzdCBpdCBidXQNCml0IGxvb2tzIHNhbmUsIHNv
IEkgd2lsbCBrZWVwIHRoZSBpZiBpc19ka2wsIHJlcGxhY2UgdG8gImFfZGl2cmF0aW8gPQ0KaXNf
ZHAgPyAxMCA6IDU7IiBhbmQgYWRkIHRvIHRoZSBjb21tZW50IHRoYXQgdGhpcyBpcyB0aGUgc3Vw
cG9zZWQgdmFsdWUNCmZvciBIRE1JIGJ1dCBpdCBpcyBub3QgdGVzdGVkLg0KDQo+IA0KPiA+ICAJ
CQkJCXRsaW5lZHJ2ID0gMTsNCj4gPiAgCQkJCX0gZWxzZSB7DQo+ID4gIAkJCQkJYV9kaXZyYXRp
byA9IGlzX2RwID8gMTAgOiA1Ow0KPiA+IC0tIA0KPiA+IDIuMjMuMA0KPiA+IA0KPiA+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
