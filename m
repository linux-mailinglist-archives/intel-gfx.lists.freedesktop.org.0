Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD161270CD
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 23:37:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B00296EBA6;
	Thu, 19 Dec 2019 22:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87DE16EBA6
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 22:37:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 14:37:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,333,1571727600"; d="scan'208";a="366217573"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga004.jf.intel.com with ESMTP; 19 Dec 2019 14:37:36 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.147]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.134]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 14:37:35 -0800
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 06/15] drm/i915/tgl: Gen-12 render
 decompression
Thread-Index: AQHVtcW/BUM/DPZKykKDx2XatjjDW6fClFaA
Date: Thu, 19 Dec 2019 22:37:35 +0000
Message-ID: <8ca6405a5475e6d60ca8539d108ec219bc124d7e.camel@intel.com>
References: <20191218161105.30638-7-imre.deak@intel.com>
 <20191218170740.829-1-imre.deak@intel.com>
In-Reply-To: <20191218170740.829-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.3]
Content-ID: <5E56C982BE719B4B816AF94927C9C3A2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 06/15] drm/i915/tgl: Gen-12 render
 decompression
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Chery,
 Nanley G" <nanley.g.chery@intel.com>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTEyLTE4IGF0IDE5OjA3ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZy
b206IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPg0K
PiANCj4gR2VuLTEyIGRpc3BsYXkgZGVjb21wcmVzc2lvbiBvcGVyYXRlcyBvbiBZLXRpbGVkIGNv
bXByZXNzZWQgbWFpbg0KPiBzdXJmYWNlLg0KPiBUaGUgQ0NTIGlzIGxpbmVhciBhbmQgaGFzIDQg
Yml0cyBvZiBtZXRhZGF0YSBmb3IgZWFjaCBtYWluIHN1cmZhY2UNCj4gY2FjaGUNCj4gbGluZSBw
YWlyLCBhIHNpemUgcmF0aW8gb2YgMToyNTYuIEdlbi0xMiBkaXNwbGF5IGRlY29tcHJlc3Npb24g
aXMNCj4gaW5jb21wYXRpYmxlIHdpdGggYnVmZmVycyBjb21wcmVzc2VkIGJ5IGVhcmxpZXIgR1BV
cywgc28gbWFrZSB1c2Ugb2YNCj4gYSBuZXcNCj4gbW9kaWZpZXIgdG8gaWRlbnRpZnkgZ2VuLTEy
IGNvbXByZXNzaW9uLiBBbm90aGVyIG5vdGFibGUgY2hhbmdlIGlzDQo+IHRoYXQNCj4gcmVuZGVy
IGRlY29tcHJlc3Npb24gaXMgc3VwcG9ydGVkIG9uIGFsbCBwbGFuZXMgZXhjZXB0IGN1cnNvciBh
bmQgb24NCj4gYWxsDQo+IHBpcGVzLiBTdGFydCBieSBhZGRpbmcgcmVuZGVyIGRlY29tcHJlc3Np
b24gc3VwcG9ydCBmb3IgW0EsWF1CR1I4ODgNCj4gcGl4ZWwNCj4gZm9ybWF0cy4NCj4gDQo+IHYy
OiBGaXggY2hlY2twYXRjaCB3YXJuaW5ncyAoTHVjYXMpDQo+IHYzOg0KPiBSZWJhc2UsIGRpc2Fi
bGUgY29sb3IgY2xlYXIsIHN0eWxpbmcgY2hhbmdlcyBhbmQgbW9kaWZ5DQo+IGludGVsX3RpbGVf
d2lkdGhfYnl0ZXMgYW5kIGludGVsX3RpbGVfaGVpZ2h0IHRvIGhhbmRsZSBsaW5lYXIgQ0NTDQo+
IHY0Og0KPiAtIFVzZSBmb3JtYXQgYmxvY2sgZGVzY3JpcHRvcnMgYW5kIHRoZSBpOTE1IHNwZWNp
ZmljIGZ1bmMgdG8gZ2V0IHRoZQ0KPiAgIHN1YnNhbXBsaW5nIGZvciBlYWNoIGNvbG9yIHBsYW5l
Lg0KPiAtIFVzZSBoZWxwZXJzIHRvIGNvbnZlcnQgYmV0d2VlbiBDQ1MgYW5kIG1haW4gcGxhbmVz
Lg0KPiB2NToNCj4gLSBGaXggc3Vic2FtcGxpbmcgcmV0dXJuZWQgYnkgaW50ZWxfZmJfcGxhbmVf
Z2V0X3N1YnNhbXBsaW5nKCkgZm9yDQo+ICAgdGhlIENDUyBwbGFuZSBvZiB0aGUgZmlyc3QgcGxh
bmUuDQo+IA0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IENj
OiBOYW5sZXkgRyBDaGVyeSA8bmFubGV5LmcuY2hlcnlAaW50ZWwuY29tPg0KPiBDYzogSmFzb24g
RWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pg0Kci1iIGZvciB0aGUgY29ycmVjdCB2ZXJz
aW9uIG9mIHRoZSBwYXRjaA0KUmV2aWV3ZWQtYnk6IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxyYWRo
YWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJh
biBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxODUgKysrKysrKysrKysr
KysrDQo+IC0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRl
LmMgIHwgIDIzICsrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAg
ICAgICAgfCAgIDEgKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxNjkgaW5zZXJ0aW9ucygrKSwgNDAg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiBpbmRleCA2YmRhMzk3YWU2NzcuLmM5YTkyZDYyYTcwZiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAg
LTE5NDEsNiArMTk0MSwxNiBAQCBzdGF0aWMgYm9vbCBpc19jY3NfcGxhbmUoY29uc3Qgc3RydWN0
DQo+IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBwbGFuZSkNCj4gIAlyZXR1cm4gcGxhbmUgPj0g
ZmItPmZvcm1hdC0+bnVtX3BsYW5lcyAvIDI7DQo+ICB9DQo+ICANCj4gK3N0YXRpYyBib29sIGlz
X2dlbjEyX2Njc19tb2RpZmllcih1NjQgbW9kaWZpZXIpDQo+ICt7DQo+ICsJcmV0dXJuIG1vZGlm
aWVyID09IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUzsNCj4gK30NCj4gKw0K
PiArc3RhdGljIGJvb2wgaXNfZ2VuMTJfY2NzX3BsYW5lKGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVi
dWZmZXIgKmZiLCBpbnQNCj4gcGxhbmUpDQo+ICt7DQo+ICsJcmV0dXJuIGlzX2dlbjEyX2Njc19t
b2RpZmllcihmYi0+bW9kaWZpZXIpICYmIGlzX2Njc19wbGFuZShmYiwNCj4gcGxhbmUpOw0KPiAr
fQ0KPiArDQo+ICBzdGF0aWMgYm9vbCBpc19hdXhfcGxhbmUoY29uc3Qgc3RydWN0IGRybV9mcmFt
ZWJ1ZmZlciAqZmIsIGludA0KPiBwbGFuZSkNCj4gIHsNCj4gIAlpZiAoaXNfY2NzX21vZGlmaWVy
KGZiLT5tb2RpZmllcikpDQo+IEBAIC0xOTU3LDYgKzE5NjcsMTQgQEAgc3RhdGljIGludCBtYWlu
X3RvX2Njc19wbGFuZShjb25zdCBzdHJ1Y3QNCj4gZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IG1h
aW5fcGxhbmUpDQo+ICAJcmV0dXJuIGZiLT5mb3JtYXQtPm51bV9wbGFuZXMgLyAyICsgbWFpbl9w
bGFuZTsNCj4gIH0NCj4gIA0KPiArc3RhdGljIGludCBjY3NfdG9fbWFpbl9wbGFuZShjb25zdCBz
dHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50DQo+IGNjc19wbGFuZSkNCj4gK3sNCj4gKwlX
QVJOX09OKCFpc19jY3NfbW9kaWZpZXIoZmItPm1vZGlmaWVyKSB8fA0KPiArCQljY3NfcGxhbmUg
PCBmYi0+Zm9ybWF0LT5udW1fcGxhbmVzIC8gMik7DQo+ICsNCj4gKwlyZXR1cm4gY2NzX3BsYW5l
IC0gZmItPmZvcm1hdC0+bnVtX3BsYW5lcyAvIDI7DQo+ICt9DQo+ICsNCj4gIC8qIFJldHVybiBl
aXRoZXIgdGhlIG1haW4gcGxhbmUncyBDQ1Mgb3IgLSBpZiBub3QgYSBDQ1MgRkIgLSBVVg0KPiBw
bGFuZSAqLw0KPiAgc3RhdGljIGludA0KPiAgaW50ZWxfbWFpbl90b19hdXhfcGxhbmUoY29uc3Qg
c3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludA0KPiBtYWluX3BsYW5lKQ0KPiBAQCAtMTk4
NSw2ICsyMDAzLDEwIEBAIGludGVsX3RpbGVfd2lkdGhfYnl0ZXMoY29uc3Qgc3RydWN0DQo+IGRy
bV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjb2xvcl9wbGFuZSkNCj4gIAkJaWYgKGlzX2Njc19wbGFu
ZShmYiwgY29sb3JfcGxhbmUpKQ0KPiAgCQkJcmV0dXJuIDEyODsNCj4gIAkJLyogZmFsbCB0aHJv
dWdoICovDQo+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1M6DQo+
ICsJCWlmIChpc19jY3NfcGxhbmUoZmIsIGNvbG9yX3BsYW5lKSkNCj4gKwkJCXJldHVybiA2NDsN
Cj4gKwkJLyogZmFsbCB0aHJvdWdoICovDQo+ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxF
RDoNCj4gIAkJaWYgKElTX0dFTihkZXZfcHJpdiwgMikgfHwNCj4gSEFTXzEyOF9CWVRFX1lfVElM
SU5HKGRldl9wcml2KSkNCj4gIAkJCXJldHVybiAxMjg7DQo+IEBAIC0yMDE4LDYgKzIwNDAsOSBA
QCBpbnRlbF90aWxlX3dpZHRoX2J5dGVzKGNvbnN0IHN0cnVjdA0KPiBkcm1fZnJhbWVidWZmZXIg
KmZiLCBpbnQgY29sb3JfcGxhbmUpDQo+ICBzdGF0aWMgdW5zaWduZWQgaW50DQo+ICBpbnRlbF90
aWxlX2hlaWdodChjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IGNvbG9yX3Bs
YW5lKQ0KPiAgew0KPiArCWlmIChpc19nZW4xMl9jY3NfcGxhbmUoZmIsIGNvbG9yX3BsYW5lKSkN
Cj4gKwkJcmV0dXJuIDE7DQo+ICsNCj4gIAlyZXR1cm4gaW50ZWxfdGlsZV9zaXplKHRvX2k5MTUo
ZmItPmRldikpIC8NCj4gIAkJaW50ZWxfdGlsZV93aWR0aF9ieXRlcyhmYiwgY29sb3JfcGxhbmUp
Ow0KPiAgfQ0KPiBAQCAtMjExOCw2ICsyMTQzLDggQEAgc3RhdGljIHVuc2lnbmVkIGludCBpbnRl
bF9zdXJmX2FsaWdubWVudChjb25zdA0KPiBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwNCj4g
IAkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkNCj4gIAkJCXJldHVybiAyNTYgKiAxMDI0
Ow0KPiAgCQlyZXR1cm4gMDsNCj4gKwljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEy
X1JDX0NDUzoNCj4gKwkJcmV0dXJuIDE2ICogMTAyNDsNCj4gIAljYXNlIEk5MTVfRk9STUFUX01P
RF9ZX1RJTEVEX0NDUzoNCj4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1M6DQo+
ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRDoNCj4gQEAgLTIzMTAsOSArMjMzNywxMCBA
QCBzdGF0aWMgdTMyIGludGVsX2FkanVzdF90aWxlX29mZnNldChpbnQgKngsDQo+IGludCAqeSwN
Cj4gIAlyZXR1cm4gbmV3X29mZnNldDsNCj4gIH0NCj4gIA0KPiAtc3RhdGljIGJvb2wgaXNfc3Vy
ZmFjZV9saW5lYXIodTY0IG1vZGlmaWVyLCBpbnQgY29sb3JfcGxhbmUpDQo+ICtzdGF0aWMgYm9v
bCBpc19zdXJmYWNlX2xpbmVhcihjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50
DQo+IGNvbG9yX3BsYW5lKQ0KPiAgew0KPiAtCXJldHVybiBtb2RpZmllciA9PSBEUk1fRk9STUFU
X01PRF9MSU5FQVI7DQo+ICsJcmV0dXJuIGZiLT5tb2RpZmllciA9PSBEUk1fRk9STUFUX01PRF9M
SU5FQVIgfHwNCj4gKwkgICAgICAgaXNfZ2VuMTJfY2NzX3BsYW5lKGZiLCBjb2xvcl9wbGFuZSk7
DQo+ICB9DQo+ICANCj4gIHN0YXRpYyB1MzIgaW50ZWxfYWRqdXN0X2FsaWduZWRfb2Zmc2V0KGlu
dCAqeCwgaW50ICp5LA0KPiBAQCAtMjMyNyw3ICsyMzU1LDcgQEAgc3RhdGljIHUzMiBpbnRlbF9h
ZGp1c3RfYWxpZ25lZF9vZmZzZXQoaW50ICp4LA0KPiBpbnQgKnksDQo+ICANCj4gIAlXQVJOX09O
KG5ld19vZmZzZXQgPiBvbGRfb2Zmc2V0KTsNCj4gIA0KPiAtCWlmICghaXNfc3VyZmFjZV9saW5l
YXIoZmItPm1vZGlmaWVyLCBjb2xvcl9wbGFuZSkpIHsNCj4gKwlpZiAoIWlzX3N1cmZhY2VfbGlu
ZWFyKGZiLCBjb2xvcl9wbGFuZSkpIHsNCj4gIAkJdW5zaWduZWQgaW50IHRpbGVfc2l6ZSwgdGls
ZV93aWR0aCwgdGlsZV9oZWlnaHQ7DQo+ICAJCXVuc2lnbmVkIGludCBwaXRjaF90aWxlczsNCj4g
IA0KPiBAQCAtMjM5Nyw3ICsyNDI1LDcgQEAgc3RhdGljIHUzMiBpbnRlbF9jb21wdXRlX2FsaWdu
ZWRfb2Zmc2V0KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAlpZiAo
YWxpZ25tZW50KQ0KPiAgCQlhbGlnbm1lbnQtLTsNCj4gIA0KPiAtCWlmICghaXNfc3VyZmFjZV9s
aW5lYXIoZmItPm1vZGlmaWVyLCBjb2xvcl9wbGFuZSkpIHsNCj4gKwlpZiAoIWlzX3N1cmZhY2Vf
bGluZWFyKGZiLCBjb2xvcl9wbGFuZSkpIHsNCj4gIAkJdW5zaWduZWQgaW50IHRpbGVfc2l6ZSwg
dGlsZV93aWR0aCwgdGlsZV9oZWlnaHQ7DQo+ICAJCXVuc2lnbmVkIGludCB0aWxlX3Jvd3MsIHRp
bGVzLCBwaXRjaF90aWxlczsNCj4gIA0KPiBAQCAtMjQ5OSw2ICsyNTI3LDcgQEAgc3RhdGljIHVu
c2lnbmVkIGludA0KPiBpbnRlbF9mYl9tb2RpZmllcl90b190aWxpbmcodTY0IGZiX21vZGlmaWVy
KQ0KPiAgCQlyZXR1cm4gSTkxNV9USUxJTkdfWDsNCj4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9Z
X1RJTEVEOg0KPiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTOg0KPiArCWNhc2Ug
STkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOg0KPiAgCQlyZXR1cm4gSTkxNV9U
SUxJTkdfWTsNCj4gIAlkZWZhdWx0Og0KPiAgCQlyZXR1cm4gSTkxNV9USUxJTkdfTk9ORTsNCj4g
QEAgLTI1MTksNyArMjU0OCw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQNCj4gaW50ZWxfZmJfbW9k
aWZpZXJfdG9fdGlsaW5nKHU2NCBmYl9tb2RpZmllcikNCj4gICAqIHVzIGEgcmF0aW8gb2Ygb25l
IGJ5dGUgaW4gdGhlIENDUyBmb3IgZWFjaCA4eDE2IHBpeGVscyBpbiB0aGUNCj4gICAqIG1haW4g
c3VyZmFjZS4NCj4gICAqLw0KPiAtc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8g
Y2NzX2Zvcm1hdHNbXSA9IHsNCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZv
IHNrbF9jY3NfZm9ybWF0c1tdID0gew0KPiAgCXsgLmZvcm1hdCA9IERSTV9GT1JNQVRfWFJHQjg4
ODgsIC5kZXB0aCA9IDI0LCAubnVtX3BsYW5lcyA9IDIsDQo+ICAJICAuY3BwID0geyA0LCAxLCB9
LCAuaHN1YiA9IDgsIC52c3ViID0gMTYsIH0sDQo+ICAJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9Y
QkdSODg4OCwgLmRlcHRoID0gMjQsIC5udW1fcGxhbmVzID0gMiwNCj4gQEAgLTI1MzAsNiArMjU1
OSwyOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbw0KPiBjY3NfZm9ybWF0
c1tdID0gew0KPiAgCSAgLmNwcCA9IHsgNCwgMSwgfSwgLmhzdWIgPSA4LCAudnN1YiA9IDE2LCAu
aGFzX2FscGhhID0gdHJ1ZSwNCj4gfSwNCj4gIH07DQo+ICANCj4gKy8qDQo+ICsgKiBHZW4tMTIg
Y29tcHJlc3Npb24gdXNlcyA0IGJpdHMgb2YgQ0NTIGRhdGEgZm9yIGVhY2ggY2FjaGUgbGluZQ0K
PiBwYWlyIGluIHRoZQ0KPiArICogbWFpbiBzdXJmYWNlLiBBbmQgZWFjaCA2NEIgQ0NTIGNhY2hl
IGxpbmUgcmVwcmVzZW50cyBhbiBhcmVhIG9mDQo+IDR4MSBZLXRpbGVzDQo+ICsgKiBpbiB0aGUg
bWFpbiBzdXJmYWNlLiBXaXRoIDQgYnl0ZSBwaXhlbHMgYW5kIGVhY2ggWS10aWxlIGhhdmluZw0K
PiBkaW1lbnNpb25zIG9mDQo+ICsgKiAzMngzMiBwaXhlbHMsIHRoZSByYXRpbyB0dXJucyBvdXQg
dG8gMUIgaW4gdGhlIENDUyBmb3IgZXZlcnkgMngzMg0KPiBwaXhlbHMgaW4NCj4gKyAqIHRoZSBt
YWluIHN1cmZhY2UuDQo+ICsgKi8NCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Zvcm1hdF9p
bmZvIGdlbjEyX2Njc19mb3JtYXRzW10gPSB7DQo+ICsJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9Y
UkdCODg4OCwgLmRlcHRoID0gMjQsIC5udW1fcGxhbmVzID0gMiwNCj4gKwkgIC5jaGFyX3Blcl9i
bG9jayA9IHsgNCwgMSB9LCAuYmxvY2tfdyA9IHsgMSwgMiB9LCAuYmxvY2tfaCA9IHsNCj4gMSwg
MSB9LA0KPiArCSAgLmhzdWIgPSAxLCAudnN1YiA9IDEsIH0sDQo+ICsJeyAuZm9ybWF0ID0gRFJN
X0ZPUk1BVF9YQkdSODg4OCwgLmRlcHRoID0gMjQsIC5udW1fcGxhbmVzID0gMiwNCj4gKwkgIC5j
aGFyX3Blcl9ibG9jayA9IHsgNCwgMSB9LCAuYmxvY2tfdyA9IHsgMSwgMiB9LCAuYmxvY2tfaCA9
IHsNCj4gMSwgMSB9LA0KPiArCSAgLmhzdWIgPSAxLCAudnN1YiA9IDEsIH0sDQo+ICsJeyAuZm9y
bWF0ID0gRFJNX0ZPUk1BVF9BUkdCODg4OCwgLmRlcHRoID0gMzIsIC5udW1fcGxhbmVzID0gMiwN
Cj4gKwkgIC5jaGFyX3Blcl9ibG9jayA9IHsgNCwgMSB9LCAuYmxvY2tfdyA9IHsgMSwgMiB9LCAu
YmxvY2tfaCA9IHsNCj4gMSwgMSB9LA0KPiArCSAgLmhzdWIgPSAxLCAudnN1YiA9IDEsIC5oYXNf
YWxwaGEgPSB0cnVlIH0sDQo+ICsJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9BQkdSODg4OCwgLmRl
cHRoID0gMzIsIC5udW1fcGxhbmVzID0gMiwNCj4gKwkgIC5jaGFyX3Blcl9ibG9jayA9IHsgNCwg
MSB9LCAuYmxvY2tfdyA9IHsgMSwgMiB9LCAuYmxvY2tfaCA9IHsNCj4gMSwgMSB9LA0KPiArCSAg
LmhzdWIgPSAxLCAudnN1YiA9IDEsIC5oYXNfYWxwaGEgPSB0cnVlIH0sDQo+ICt9Ow0KPiArDQo+
ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqDQo+ICBsb29rdXBfZm9ybWF0
X2luZm8oY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyBmb3JtYXRzW10sDQo+ICAJCSAgIGlu
dCBudW1fZm9ybWF0cywgdTMyIGZvcm1hdCkNCj4gQEAgLTI1NTAsOCArMjYwMSwxMiBAQCBpbnRl
bF9nZXRfZm9ybWF0X2luZm8oY29uc3Qgc3RydWN0DQo+IGRybV9tb2RlX2ZiX2NtZDIgKmNtZCkN
Cj4gIAlzd2l0Y2ggKGNtZC0+bW9kaWZpZXJbMF0pIHsNCj4gIAljYXNlIEk5MTVfRk9STUFUX01P
RF9ZX1RJTEVEX0NDUzoNCj4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1M6DQo+
IC0JCXJldHVybiBsb29rdXBfZm9ybWF0X2luZm8oY2NzX2Zvcm1hdHMsDQo+IC0JCQkJCSAgQVJS
QVlfU0laRShjY3NfZm9ybWF0cyksDQo+ICsJCXJldHVybiBsb29rdXBfZm9ybWF0X2luZm8oc2ts
X2Njc19mb3JtYXRzLA0KPiArCQkJCQkgIEFSUkFZX1NJWkUoc2tsX2Njc19mb3JtYXRzKSwNCj4g
KwkJCQkJICBjbWQtPnBpeGVsX2Zvcm1hdCk7DQo+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9U
SUxFRF9HRU4xMl9SQ19DQ1M6DQo+ICsJCXJldHVybiBsb29rdXBfZm9ybWF0X2luZm8oZ2VuMTJf
Y2NzX2Zvcm1hdHMsDQo+ICsJCQkJCSAgQVJSQVlfU0laRShnZW4xMl9jY3NfZm9ybWF0cykNCj4g
LA0KPiAgCQkJCQkgIGNtZC0+cGl4ZWxfZm9ybWF0KTsNCj4gIAlkZWZhdWx0Og0KPiAgCQlyZXR1
cm4gTlVMTDsNCj4gQEAgLTI1NjAsNyArMjYxNSw4IEBAIGludGVsX2dldF9mb3JtYXRfaW5mbyhj
b25zdCBzdHJ1Y3QNCj4gZHJtX21vZGVfZmJfY21kMiAqY21kKQ0KPiAgDQo+ICBib29sIGlzX2Nj
c19tb2RpZmllcih1NjQgbW9kaWZpZXIpDQo+ICB7DQo+IC0JcmV0dXJuIG1vZGlmaWVyID09IEk5
MTVfRk9STUFUX01PRF9ZX1RJTEVEX0NDUyB8fA0KPiArCXJldHVybiBtb2RpZmllciA9PSBJOTE1
X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1MgfHwNCj4gKwkgICAgICAgbW9kaWZpZXIg
PT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTIHx8DQo+ICAJICAgICAgIG1vZGlmaWVyID09
IEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1M7DQo+ICB9DQo+ICANCj4gQEAgLTI2MDgsOCAr
MjY2NCw5IEBAIHN0YXRpYyB1MzINCj4gIGludGVsX2ZiX3N0cmlkZV9hbGlnbm1lbnQoY29uc3Qg
c3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludA0KPiBjb2xvcl9wbGFuZSkNCj4gIHsNCj4g
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGZiLT5kZXYpOw0K
PiArCXUzMiB0aWxlX3dpZHRoOw0KPiAgDQo+IC0JaWYgKGZiLT5tb2RpZmllciA9PSBEUk1fRk9S
TUFUX01PRF9MSU5FQVIpIHsNCj4gKwlpZiAoaXNfc3VyZmFjZV9saW5lYXIoZmIsIGNvbG9yX3Bs
YW5lKSkgew0KPiAgCQl1MzIgbWF4X3N0cmlkZSA9IGludGVsX3BsYW5lX2ZiX21heF9zdHJpZGUo
ZGV2X3ByaXYsDQo+ICAJCQkJCQkJICAgZmItPmZvcm1hdC0NCj4gPmZvcm1hdCwNCj4gIAkJCQkJ
CQkgICBmYi0NCj4gPm1vZGlmaWVyKTsNCj4gQEAgLTI2MTgsMTMgKzI2NzUsMTQgQEAgaW50ZWxf
ZmJfc3RyaWRlX2FsaWdubWVudChjb25zdCBzdHJ1Y3QNCj4gZHJtX2ZyYW1lYnVmZmVyICpmYiwg
aW50IGNvbG9yX3BsYW5lKQ0KPiAgCQkgKiBUbyBtYWtlIHJlbWFwcGluZyB3aXRoIGxpbmVhciBn
ZW5lcmFsbHkgZmVhc2libGUNCj4gIAkJICogd2UgbmVlZCB0aGUgc3RyaWRlIHRvIGJlIHBhZ2Ug
YWxpZ25lZC4NCj4gIAkJICovDQo+IC0JCWlmIChmYi0+cGl0Y2hlc1tjb2xvcl9wbGFuZV0gPiBt
YXhfc3RyaWRlKQ0KPiArCQlpZiAoZmItPnBpdGNoZXNbY29sb3JfcGxhbmVdID4gbWF4X3N0cmlk
ZSAmJg0KPiAhaXNfY2NzX21vZGlmaWVyKGZiLT5tb2RpZmllcikpDQo+ICAJCQlyZXR1cm4gaW50
ZWxfdGlsZV9zaXplKGRldl9wcml2KTsNCj4gIAkJZWxzZQ0KPiAgCQkJcmV0dXJuIDY0Ow0KPiAt
CX0gZWxzZSB7DQo+IC0JCXUzMiB0aWxlX3dpZHRoID0gaW50ZWxfdGlsZV93aWR0aF9ieXRlcyhm
YiwNCj4gY29sb3JfcGxhbmUpOw0KPiArCX0NCj4gIA0KPiArCXRpbGVfd2lkdGggPSBpbnRlbF90
aWxlX3dpZHRoX2J5dGVzKGZiLCBjb2xvcl9wbGFuZSk7DQo+ICsJaWYgKGlzX2Njc19tb2RpZmll
cihmYi0+bW9kaWZpZXIpICYmIGNvbG9yX3BsYW5lID09IDApIHsNCj4gIAkJLyoNCj4gIAkJICog
RGlzcGxheSBXQSAjMDUzMTogc2tsLGJ4dCxrYmwsZ2xrDQo+ICAJCSAqDQo+IEBAIC0yNjM0LDEy
ICsyNjkyLDE2IEBAIGludGVsX2ZiX3N0cmlkZV9hbGlnbm1lbnQoY29uc3Qgc3RydWN0DQo+IGRy
bV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjb2xvcl9wbGFuZSkNCj4gIAkJICogcmVxdWlyZSB0aGUg
ZW50aXJlIGZiIHRvIGFjY29tbW9kYXRlIHRoYXQgdG8gYXZvaWQNCj4gIAkJICogcG90ZW50aWFs
IHJ1bnRpbWUgZXJyb3JzIGF0IHBsYW5lIGNvbmZpZ3VyYXRpb24NCj4gdGltZS4NCj4gIAkJICov
DQo+IC0JCWlmIChJU19HRU4oZGV2X3ByaXYsIDkpICYmIGlzX2Njc19tb2RpZmllcihmYi0NCj4g
Pm1vZGlmaWVyKSAmJg0KPiAtCQkgICAgY29sb3JfcGxhbmUgPT0gMCAmJiBmYi0+d2lkdGggPiAz
ODQwKQ0KPiArCQlpZiAoSVNfR0VOKGRldl9wcml2LCA5KSAmJiBmYi0+d2lkdGggPiAzODQwKQ0K
PiArCQkJdGlsZV93aWR0aCAqPSA0Ow0KPiArCQkvKg0KPiArCQkgKiBUaGUgbWFpbiBzdXJmYWNl
IHBpdGNoIG11c3QgYmUgcGFkZGVkIHRvIGEgbXVsdGlwbGUNCj4gb2YgZm91cg0KPiArCQkgKiB0
aWxlIHdpZHRocy4NCj4gKwkJICovDQo+ICsJCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTIpDQo+ICAJCQl0aWxlX3dpZHRoICo9IDQ7DQo+IC0NCj4gLQkJcmV0dXJuIHRpbGVfd2lk
dGg7DQo+ICAJfQ0KPiArCXJldHVybiB0aWxlX3dpZHRoOw0KPiAgfQ0KPiAgDQo+ICBib29sIGlu
dGVsX3BsYW5lX2Nhbl9yZW1hcChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKnBs
YW5lX3N0YXRlKQ0KPiBAQCAtMjcxMCwyNSArMjc3Miw3NCBAQCBzdGF0aWMgYm9vbCBpbnRlbF9w
bGFuZV9uZWVkc19yZW1hcChjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5l
X3N0YXRlKQ0KPiAgCXJldHVybiBzdHJpZGUgPiBtYXhfc3RyaWRlOw0KPiAgfQ0KPiAgDQo+ICtz
dGF0aWMgdm9pZA0KPiAraW50ZWxfZmJfcGxhbmVfZ2V0X3N1YnNhbXBsaW5nKGludCAqaHN1Yiwg
aW50ICp2c3ViLA0KPiArCQkJICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZi
LA0KPiArCQkJICAgICAgIGludCBjb2xvcl9wbGFuZSkNCj4gK3sNCj4gKwlpbnQgbWFpbl9wbGFu
ZTsNCj4gKw0KPiArCWlmIChjb2xvcl9wbGFuZSA9PSAwKSB7DQo+ICsJCSpoc3ViID0gMTsNCj4g
KwkJKnZzdWIgPSAxOw0KPiArDQo+ICsJCXJldHVybjsNCj4gKwl9DQo+ICsNCj4gKwkvKg0KPiAr
CSAqIFRPRE86IERlZHVjdCB0aGUgc3Vic2FtcGxpbmcgZnJvbSB0aGUgY2hhciBibG9jayBmb3Ig
YWxsIENDUw0KPiArCSAqIGZvcm1hdHMgYW5kIHBsYW5lcy4NCj4gKwkgKi8NCj4gKwlpZiAoIWlz
X2dlbjEyX2Njc19wbGFuZShmYiwgY29sb3JfcGxhbmUpKSB7DQo+ICsJCSpoc3ViID0gZmItPmZv
cm1hdC0+aHN1YjsNCj4gKwkJKnZzdWIgPSBmYi0+Zm9ybWF0LT52c3ViOw0KPiArDQo+ICsJCXJl
dHVybjsNCj4gKwl9DQo+ICsNCj4gKwltYWluX3BsYW5lID0gY2NzX3RvX21haW5fcGxhbmUoZmIs
IGNvbG9yX3BsYW5lKTsNCj4gKwkqaHN1YiA9IGRybV9mb3JtYXRfaW5mb19ibG9ja193aWR0aChm
Yi0+Zm9ybWF0LCBjb2xvcl9wbGFuZSkgLw0KPiArCSAgICAgICAgZHJtX2Zvcm1hdF9pbmZvX2Js
b2NrX3dpZHRoKGZiLT5mb3JtYXQsIG1haW5fcGxhbmUpOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBU
aGUgbWluIHN0cmlkZSBjaGVjayBpbiB0aGUgY29yZSBmcmFtZWJ1ZmZlcl9jaGVjaygpDQo+IGZ1
bmN0aW9uDQo+ICsJICogYXNzdW1lcyB0aGF0IGZvcm1hdC0+aHN1YiBhcHBsaWVzIHRvIGV2ZXJ5
IHBsYW5lIGV4Y2VwdCBmb3INCj4gdGhlDQo+ICsJICogZmlyc3QgcGxhbmUuIFRoYXQncyBpbmNv
cnJlY3QgZm9yIHRoZSBDQ1MgQVVYIHBsYW5lIG9mIHRoZQ0KPiBmaXJzdA0KPiArCSAqIHBsYW5l
LCBidXQgZm9yIHRoZSBhYm92ZSBjaGVjayB0byBwYXNzIHdlIG11c3QgZGVmaW5lIHRoZQ0KPiBi
bG9jaw0KPiArCSAqIHdpZHRoIHdpdGggdGhhdCBzdWJzYW1wbGluZyBhcHBsaWVkIHRvIGl0LiBB
ZGp1c3QgdGhlIHdpZHRoDQo+IGhlcmUNCj4gKwkgKiBhY2NvcmRpbmdseSwgc28gd2UgY2FuIGNh
bGN1bGF0ZSB0aGUgYWN0dWFsIHN1YnNhbXBsaW5nDQo+IGZhY3Rvci4NCj4gKwkgKi8NCj4gKwlp
ZiAobWFpbl9wbGFuZSA9PSAwKQ0KPiArCQkqaHN1YiAqPSBmYi0+Zm9ybWF0LT5oc3ViOw0KPiAr
DQo+ICsJKnZzdWIgPSAzMjsNCj4gK30NCj4gIHN0YXRpYyBpbnQNCj4gIGludGVsX2ZiX2NoZWNr
X2Njc194eShzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IHgsIGludCB5KQ0KPiAgew0K
PiAgCXN0cnVjdCBpbnRlbF9mcmFtZWJ1ZmZlciAqaW50ZWxfZmIgPSB0b19pbnRlbF9mcmFtZWJ1
ZmZlcihmYik7DQo+IC0JaW50IGhzdWIgPSBmYi0+Zm9ybWF0LT5oc3ViOw0KPiAtCWludCB2c3Vi
ID0gZmItPmZvcm1hdC0+dnN1YjsNCj4gKwlpbnQgbWFpbl9wbGFuZTsNCj4gKwlpbnQgaHN1Yiwg
dnN1YjsNCj4gIAlpbnQgdGlsZV93aWR0aCwgdGlsZV9oZWlnaHQ7DQo+ICAJaW50IGNjc194LCBj
Y3NfeTsNCj4gIAlpbnQgbWFpbl94LCBtYWluX3k7DQo+ICsJaW50IGNjc19wbGFuZSA9IDE7DQo+
ICANCj4gLQlpbnRlbF90aWxlX2RpbXMoZmIsIDEsICZ0aWxlX3dpZHRoLCAmdGlsZV9oZWlnaHQp
Ow0KPiArCWlmICghaXNfY2NzX3BsYW5lKGZiLCBjY3NfcGxhbmUpKQ0KPiArCQlyZXR1cm4gMDsN
Cj4gKw0KPiArCWludGVsX3RpbGVfZGltcyhmYiwgY2NzX3BsYW5lLCAmdGlsZV93aWR0aCwgJnRp
bGVfaGVpZ2h0KTsNCj4gKwlpbnRlbF9mYl9wbGFuZV9nZXRfc3Vic2FtcGxpbmcoJmhzdWIsICZ2
c3ViLCBmYiwgY2NzX3BsYW5lKTsNCj4gIA0KPiAgCXRpbGVfd2lkdGggKj0gaHN1YjsNCj4gIAl0
aWxlX2hlaWdodCAqPSB2c3ViOw0KPiAgDQo+ICAJY2NzX3ggPSAoeCAqIGhzdWIpICUgdGlsZV93
aWR0aDsNCj4gIAljY3NfeSA9ICh5ICogdnN1YikgJSB0aWxlX2hlaWdodDsNCj4gLQltYWluX3gg
PSBpbnRlbF9mYi0+bm9ybWFsWzBdLnggJSB0aWxlX3dpZHRoOw0KPiAtCW1haW5feSA9IGludGVs
X2ZiLT5ub3JtYWxbMF0ueSAlIHRpbGVfaGVpZ2h0Ow0KPiArDQo+ICsJbWFpbl9wbGFuZSA9IGNj
c190b19tYWluX3BsYW5lKGZiLCBjY3NfcGxhbmUpOw0KPiArCW1haW5feCA9IGludGVsX2ZiLT5u
b3JtYWxbbWFpbl9wbGFuZV0ueCAlIHRpbGVfd2lkdGg7DQo+ICsJbWFpbl95ID0gaW50ZWxfZmIt
Pm5vcm1hbFttYWluX3BsYW5lXS55ICUgdGlsZV9oZWlnaHQ7DQo+ICANCj4gIAkvKg0KPiAgCSAq
IENDUyBkb2Vzbid0IGhhdmUgaXRzIG93biB4L3kgb2Zmc2V0IHJlZ2lzdGVyLCBzbyB0aGUgaW50
cmENCj4gQ0NTIHRpbGUNCj4gQEAgLTI3MzgsOCArMjg0OSw4IEBAIGludGVsX2ZiX2NoZWNrX2Nj
c194eShzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyDQo+ICpmYiwgaW50IHgsIGludCB5KQ0KPiAgCQlE
Uk1fREVCVUdfS01TKCJCYWQgQ0NTIHgveSAobWFpbiAlZCwlZCBjY3MgJWQsJWQpIGZ1bGwNCj4g
KG1haW4gJWQsJWQgY2NzICVkLCVkKVxuIiwNCj4gIAkJCSAgICAgIG1haW5feCwgbWFpbl95LA0K
PiAgCQkJICAgICAgY2NzX3gsIGNjc195LA0KPiAtCQkJICAgICAgaW50ZWxfZmItPm5vcm1hbFsw
XS54LA0KPiAtCQkJICAgICAgaW50ZWxfZmItPm5vcm1hbFswXS55LA0KPiArCQkJICAgICAgaW50
ZWxfZmItPm5vcm1hbFttYWluX3BsYW5lXS54LA0KPiArCQkJICAgICAgaW50ZWxfZmItPm5vcm1h
bFttYWluX3BsYW5lXS55LA0KPiAgCQkJICAgICAgeCwgeSk7DQo+ICAJCXJldHVybiAtRUlOVkFM
Ow0KPiAgCX0NCj4gQEAgLTI4MTAsNyArMjkyMSw3IEBAIGludGVsX2ZpbGxfZmJfaW5mbyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYsDQo+ICAJCQkJCQkgICAgICB0aWxlX3Np
emUpOw0KPiAgCQlvZmZzZXQgLz0gdGlsZV9zaXplOw0KPiAgDQo+IC0JCWlmICghaXNfc3VyZmFj
ZV9saW5lYXIoZmItPm1vZGlmaWVyLCBpKSkgew0KPiArCQlpZiAoIWlzX3N1cmZhY2VfbGluZWFy
KGZiLCBpKSkgew0KPiAgCQkJdW5zaWduZWQgaW50IHRpbGVfd2lkdGgsIHRpbGVfaGVpZ2h0Ow0K
PiAgCQkJdW5zaWduZWQgaW50IHBpdGNoX3RpbGVzOw0KPiAgCQkJc3RydWN0IGRybV9yZWN0IHI7
DQo+IEBAIC0zNDg5LDE0ICszNjAwLDE1IEBAIHN0YXRpYyBib29sDQo+IHNrbF9jaGVja19tYWlu
X2Njc19jb29yZGluYXRlcyhzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlDQo+
ICAJCQkJCSAgIGludCBtYWluX3gsIGludCBtYWluX3ksIHUzMg0KPiBtYWluX29mZnNldCkNCj4g
IHsNCj4gIAljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5o
dy5mYjsNCj4gLQlpbnQgaHN1YiA9IGZiLT5mb3JtYXQtPmhzdWI7DQo+IC0JaW50IHZzdWIgPSBm
Yi0+Zm9ybWF0LT52c3ViOw0KPiAgCWludCBjY3NfcGxhbmUgPSBtYWluX3RvX2Njc19wbGFuZShm
YiwgMCk7DQo+ICAJaW50IGF1eF94ID0gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lW2Njc19wbGFu
ZV0ueDsNCj4gIAlpbnQgYXV4X3kgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbY2NzX3BsYW5l
XS55Ow0KPiAgCXUzMiBhdXhfb2Zmc2V0ID0gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lW2Njc19w
bGFuZV0ub2Zmc2V0Ow0KPiAgCXUzMiBhbGlnbm1lbnQgPSBpbnRlbF9zdXJmX2FsaWdubWVudChm
YiwgY2NzX3BsYW5lKTsNCj4gKwlpbnQgaHN1YjsNCj4gKwlpbnQgdnN1YjsNCj4gIA0KPiArCWlu
dGVsX2ZiX3BsYW5lX2dldF9zdWJzYW1wbGluZygmaHN1YiwgJnZzdWIsIGZiLCBjY3NfcGxhbmUp
Ow0KPiAgCXdoaWxlIChhdXhfb2Zmc2V0ID49IG1haW5fb2Zmc2V0ICYmIGF1eF95IDw9IG1haW5f
eSkgew0KPiAgCQlpbnQgeCwgeTsNCj4gIA0KPiBAQCAtMzY1NywxMiArMzc2OSwxNSBAQCBzdGF0
aWMgaW50IHNrbF9jaGVja19jY3NfYXV4X3N1cmZhY2Uoc3RydWN0DQo+IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSkNCj4gIAljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9
IHBsYW5lX3N0YXRlLT5ody5mYjsNCj4gIAlpbnQgc3JjX3ggPSBwbGFuZV9zdGF0ZS0+dWFwaS5z
cmMueDEgPj4gMTY7DQo+ICAJaW50IHNyY195ID0gcGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkxID4+
IDE2Ow0KPiAtCWludCBoc3ViID0gZmItPmZvcm1hdC0+aHN1YjsNCj4gLQlpbnQgdnN1YiA9IGZi
LT5mb3JtYXQtPnZzdWI7DQo+IC0JaW50IHggPSBzcmNfeCAvIGhzdWI7DQo+IC0JaW50IHkgPSBz
cmNfeSAvIHZzdWI7DQo+ICsJaW50IGhzdWI7DQo+ICsJaW50IHZzdWI7DQo+ICsJaW50IHg7DQo+
ICsJaW50IHk7DQo+ICAJdTMyIG9mZnNldDsNCj4gIA0KPiArCWludGVsX2ZiX3BsYW5lX2dldF9z
dWJzYW1wbGluZygmaHN1YiwgJnZzdWIsIGZiLCAxKTsNCj4gKwl4ID0gc3JjX3ggLyBoc3ViOw0K
PiArCXkgPSBzcmNfeSAvIHZzdWI7DQo+ICAJaW50ZWxfYWRkX2ZiX29mZnNldHMoJngsICZ5LCBw
bGFuZV9zdGF0ZSwgMSk7DQo+ICAJb2Zmc2V0ID0gaW50ZWxfcGxhbmVfY29tcHV0ZV9hbGlnbmVk
X29mZnNldCgmeCwgJnksDQo+IHBsYW5lX3N0YXRlLCAxKTsNCj4gIA0KPiBAQCAtNDE1OCw3ICs0
MjczLDcgQEAgc3RhdGljIHVuc2lnbmVkIGludCBza2xfcGxhbmVfc3RyaWRlX211bHQoY29uc3QN
Cj4gc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsDQo+ICAJICogVGhlIHN0cmlkZSBpcyBlaXRo
ZXIgZXhwcmVzc2VkIGFzIGEgbXVsdGlwbGUgb2YgNjQgYnl0ZXMNCj4gY2h1bmtzIGZvcg0KPiAg
CSAqIGxpbmVhciBidWZmZXJzIG9yIGluIG51bWJlciBvZiB0aWxlcyBmb3IgdGlsZWQgYnVmZmVy
cy4NCj4gIAkgKi8NCj4gLQlpZiAoZmItPm1vZGlmaWVyID09IERSTV9GT1JNQVRfTU9EX0xJTkVB
UikNCj4gKwlpZiAoaXNfc3VyZmFjZV9saW5lYXIoZmIsIGNvbG9yX3BsYW5lKSkNCj4gIAkJcmV0
dXJuIDY0Ow0KPiAgCWVsc2UgaWYgKGRybV9yb3RhdGlvbl85MF9vcl8yNzAocm90YXRpb24pKQ0K
PiAgCQlyZXR1cm4gaW50ZWxfdGlsZV9oZWlnaHQoZmIsIGNvbG9yX3BsYW5lKTsNCj4gQEAgLTQy
ODYsNiArNDQwMSwxMCBAQCBzdGF0aWMgdTMyIHNrbF9wbGFuZV9jdGxfdGlsaW5nKHU2NA0KPiBm
Yl9tb2RpZmllcikNCj4gIAkJcmV0dXJuIFBMQU5FX0NUTF9USUxFRF9ZOw0KPiAgCWNhc2UgSTkx
NV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTOg0KPiAgCQlyZXR1cm4gUExBTkVfQ1RMX1RJTEVEX1kg
fA0KPiBQTEFORV9DVExfUkVOREVSX0RFQ09NUFJFU1NJT05fRU5BQkxFOw0KPiArCWNhc2UgSTkx
NV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOg0KPiArCQlyZXR1cm4gUExBTkVfQ1RM
X1RJTEVEX1kgfA0KPiArCQkgICAgICAgUExBTkVfQ1RMX1JFTkRFUl9ERUNPTVBSRVNTSU9OX0VO
QUJMRSB8DQo+ICsJCSAgICAgICBQTEFORV9DVExfQ0xFQVJfQ09MT1JfRElTQUJMRTsNCj4gIAlj
YXNlIEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRDoNCj4gIAkJcmV0dXJuIFBMQU5FX0NUTF9USUxF
RF9ZRjsNCj4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1M6DQo+IEBAIC0xMDAy
MSw3ICsxMDE0MCw5IEBAIHNreWxha2VfZ2V0X2luaXRpYWxfcGxhbmVfY29uZmlnKHN0cnVjdA0K
PiBpbnRlbF9jcnRjICpjcnRjLA0KPiAgCWNhc2UgUExBTkVfQ1RMX1RJTEVEX1k6DQo+ICAJCXBs
YW5lX2NvbmZpZy0+dGlsaW5nID0gSTkxNV9USUxJTkdfWTsNCj4gIAkJaWYgKHZhbCAmIFBMQU5F
X0NUTF9SRU5ERVJfREVDT01QUkVTU0lPTl9FTkFCTEUpDQo+IC0JCQlmYi0+bW9kaWZpZXIgPSBJ
OTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9DQ1M7DQo+ICsJCQlmYi0+bW9kaWZpZXIgPSBJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyID8NCj4gKwkJCQlJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4x
Ml9SQ19DQ1MgOg0KPiArCQkJCUk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0NDUzsNCj4gIAkJZWxz
ZQ0KPiAgCQkJZmItPm1vZGlmaWVyID0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRUQ7DQo+ICAJCWJy
ZWFrOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9z
cHJpdGUuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMN
Cj4gaW5kZXggODM5NDUwMmIwOTJkLi42N2E5MDA1OTkwMGYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiBAQCAtNTgzLDYgKzU4Myw3IEBA
IHNrbF9wcm9ncmFtX3BsYW5lKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICAJY29uc3Qg
c3RydWN0IGRybV9pbnRlbF9zcHJpdGVfY29sb3JrZXkgKmtleSA9ICZwbGFuZV9zdGF0ZS0NCj4g
PmNrZXk7DQo+ICAJdTMyIHN1cmZfYWRkciA9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVtjb2xv
cl9wbGFuZV0ub2Zmc2V0Ow0KPiAgCXUzMiBzdHJpZGUgPSBza2xfcGxhbmVfc3RyaWRlKHBsYW5l
X3N0YXRlLCBjb2xvcl9wbGFuZSk7DQo+ICsJdTMyIGF1eF9kaXN0ID0gcGxhbmVfc3RhdGUtPmNv
bG9yX3BsYW5lWzFdLm9mZnNldCAtIHN1cmZfYWRkcjsNCj4gIAl1MzIgYXV4X3N0cmlkZSA9IHNr
bF9wbGFuZV9zdHJpZGUocGxhbmVfc3RhdGUsIDEpOw0KPiAgCWludCBjcnRjX3ggPSBwbGFuZV9z
dGF0ZS0+dWFwaS5kc3QueDE7DQo+ICAJaW50IGNydGNfeSA9IHBsYW5lX3N0YXRlLT51YXBpLmRz
dC55MTsNCj4gQEAgLTYyNCw4ICs2MjUsMTAgQEAgc2tsX3Byb2dyYW1fcGxhbmUoc3RydWN0IGlu
dGVsX3BsYW5lICpwbGFuZSwNCj4gIAlJOTE1X1dSSVRFX0ZXKFBMQU5FX1NUUklERShwaXBlLCBw
bGFuZV9pZCksIHN0cmlkZSk7DQo+ICAJSTkxNV9XUklURV9GVyhQTEFORV9QT1MocGlwZSwgcGxh
bmVfaWQpLCAoY3J0Y195IDw8IDE2KSB8DQo+IGNydGNfeCk7DQo+ICAJSTkxNV9XUklURV9GVyhQ
TEFORV9TSVpFKHBpcGUsIHBsYW5lX2lkKSwgKHNyY19oIDw8IDE2KSB8DQo+IHNyY193KTsNCj4g
LQlJOTE1X1dSSVRFX0ZXKFBMQU5FX0FVWF9ESVNUKHBpcGUsIHBsYW5lX2lkKSwNCj4gLQkJICAg
ICAgKHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVsxXS5vZmZzZXQgLSBzdXJmX2FkZHIpDQo+IHwg
YXV4X3N0cmlkZSk7DQo+ICsNCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDEyKQ0KPiAr
CQlhdXhfZGlzdCB8PSBhdXhfc3RyaWRlOw0KPiArCUk5MTVfV1JJVEVfRlcoUExBTkVfQVVYX0RJ
U1QocGlwZSwgcGxhbmVfaWQpLCBhdXhfZGlzdCk7DQo+ICANCj4gIAlpZiAoaWNsX2lzX2hkcl9w
bGFuZShkZXZfcHJpdiwgcGxhbmVfaWQpKQ0KPiAgCQlJOTE1X1dSSVRFX0ZXKFBMQU5FX0NVU19D
VEwocGlwZSwgcGxhbmVfaWQpLA0KPiBwbGFuZV9zdGF0ZS0+Y3VzX2N0bCk7DQo+IEBAIC0yMTAy
LDcgKzIxMDUsOCBAQCBzdGF0aWMgaW50IHNrbF9wbGFuZV9jaGVja19mYihjb25zdCBzdHJ1Y3QN
Cj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAkgICAgKGZiLT5tb2RpZmllciA9
PSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRCB8fA0KPiAgCSAgICAgZmItPm1vZGlmaWVyID09IEk5
MTVfRk9STUFUX01PRF9ZZl9USUxFRCB8fA0KPiAgCSAgICAgZmItPm1vZGlmaWVyID09IEk5MTVf
Rk9STUFUX01PRF9ZX1RJTEVEX0NDUyB8fA0KPiAtCSAgICAgZmItPm1vZGlmaWVyID09IEk5MTVf
Rk9STUFUX01PRF9ZZl9USUxFRF9DQ1MpKSB7DQo+ICsJICAgICBmYi0+bW9kaWZpZXIgPT0gSTkx
NV9GT1JNQVRfTU9EX1lmX1RJTEVEX0NDUyB8fA0KPiArCSAgICAgZmItPm1vZGlmaWVyID09IEk5
MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUykpIHsNCj4gIAkJRFJNX0RFQlVHX0tN
UygiWS9ZZiB0aWxpbmcgbm90IHN1cHBvcnRlZCBpbiBJRi1JRA0KPiBtb2RlXG4iKTsNCj4gIAkJ
cmV0dXJuIC1FSU5WQUw7DQo+ICAJfQ0KPiBAQCAtMjU3Myw3ICsyNTc3LDggQEAgc3RhdGljIGNv
bnN0IHU2NA0KPiBza2xfcGxhbmVfZm9ybWF0X21vZGlmaWVyc19jY3NbXSA9IHsNCj4gIAlEUk1f
Rk9STUFUX01PRF9JTlZBTElEDQo+ICB9Ow0KPiAgDQo+IC1zdGF0aWMgY29uc3QgdTY0IGdlbjEy
X3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNfbm9jY3NbXSA9IHsNCj4gK3N0YXRpYyBjb25zdCB1NjQg
Z2VuMTJfcGxhbmVfZm9ybWF0X21vZGlmaWVyc19jY3NbXSA9IHsNCj4gKwlJOTE1X0ZPUk1BVF9N
T0RfWV9USUxFRF9HRU4xMl9SQ19DQ1MsDQo+ICAJSTkxNV9GT1JNQVRfTU9EX1lfVElMRUQsDQo+
ICAJSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQsDQo+ICAJRFJNX0ZPUk1BVF9NT0RfTElORUFSLA0K
PiBAQCAtMjc0NCw2ICsyNzQ5LDcgQEAgc3RhdGljIGJvb2wNCj4gZ2VuMTJfcGxhbmVfZm9ybWF0
X21vZF9zdXBwb3J0ZWQoc3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLA0KPiAgCWNhc2UgRFJNX0ZP
Uk1BVF9NT0RfTElORUFSOg0KPiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQ6DQo+ICAJ
Y2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRDoNCj4gKwljYXNlIEk5MTVfRk9STUFUX01PRF9Z
X1RJTEVEX0dFTjEyX1JDX0NDUzoNCj4gIAkJYnJlYWs7DQo+ICAJZGVmYXVsdDoNCj4gIAkJcmV0
dXJuIGZhbHNlOw0KPiBAQCAtMjc1NCw2ICsyNzYwLDkgQEAgc3RhdGljIGJvb2wNCj4gZ2VuMTJf
cGxhbmVfZm9ybWF0X21vZF9zdXBwb3J0ZWQoc3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLA0KPiAg
CWNhc2UgRFJNX0ZPUk1BVF9YQkdSODg4ODoNCj4gIAljYXNlIERSTV9GT1JNQVRfQVJHQjg4ODg6
DQo+ICAJY2FzZSBEUk1fRk9STUFUX0FCR1I4ODg4Og0KPiArCQlpZiAoaXNfY2NzX21vZGlmaWVy
KG1vZGlmaWVyKSkNCj4gKwkJCXJldHVybiB0cnVlOw0KPiArCQkvKiBmYWxsIHRocm91Z2ggKi8N
Cj4gIAljYXNlIERSTV9GT1JNQVRfUkdCNTY1Og0KPiAgCWNhc2UgRFJNX0ZPUk1BVF9YUkdCMjEw
MTAxMDoNCj4gIAljYXNlIERSTV9GT1JNQVRfWEJHUjIxMDEwMTA6DQo+IEBAIC0yOTYzLDEzICsy
OTcyLDExIEBAIHNrbF91bml2ZXJzYWxfcGxhbmVfY3JlYXRlKHN0cnVjdA0KPiBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwNCj4gIAkJZm9ybWF0cyA9IHNrbF9nZXRfcGxhbmVfZm9ybWF0cyhk
ZXZfcHJpdiwgcGlwZSwNCj4gIAkJCQkJCXBsYW5lX2lkLA0KPiAmbnVtX2Zvcm1hdHMpOw0KPiAg
DQo+ICsJcGxhbmUtPmhhc19jY3MgPSBza2xfcGxhbmVfaGFzX2NjcyhkZXZfcHJpdiwgcGlwZSwg
cGxhbmVfaWQpOw0KPiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7DQo+IC0JCS8q
IFRPRE86IEltcGxlbWVudCBzdXBwb3J0IGZvciBnZW4tMTIgQ0NTIG1vZGlmaWVycyAqLw0KPiAt
CQlwbGFuZS0+aGFzX2NjcyA9IGZhbHNlOw0KPiAtCQltb2RpZmllcnMgPSBnZW4xMl9wbGFuZV9m
b3JtYXRfbW9kaWZpZXJzX25vY2NzOw0KPiArCQltb2RpZmllcnMgPSBnZW4xMl9wbGFuZV9mb3Jt
YXRfbW9kaWZpZXJzX2NjczsNCj4gIAkJcGxhbmVfZnVuY3MgPSAmZ2VuMTJfcGxhbmVfZnVuY3M7
DQo+ICAJfSBlbHNlIHsNCj4gLQkJcGxhbmUtPmhhc19jY3MgPSBza2xfcGxhbmVfaGFzX2Njcyhk
ZXZfcHJpdiwgcGlwZSwNCj4gcGxhbmVfaWQpOw0KPiAgCQlpZiAocGxhbmUtPmhhc19jY3MpDQo+
ICAJCQltb2RpZmllcnMgPSBza2xfcGxhbmVfZm9ybWF0X21vZGlmaWVyc19jY3M7DQo+ICAJCWVs
c2UNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGluZGV4IGNiYjQ2ODlhZjQzMi4uYmJm
ZWRlYjAwYjdmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTY4MDAsNiAr
NjgwMCw3IEBAIGVudW0gew0KPiAgI2RlZmluZSAgIFBMQU5FX0NUTF9ZVVY0MjJfVllVWQkJCSgz
IDw8IDE2KQ0KPiAgI2RlZmluZSAgIFBMQU5FX0NUTF9SRU5ERVJfREVDT01QUkVTU0lPTl9FTkFC
TEUJKDEgPDwgMTUpDQo+ICAjZGVmaW5lICAgUExBTkVfQ1RMX1RSSUNLTEVfRkVFRF9ESVNBQkxF
CSgxIDw8IDE0KQ0KPiArI2RlZmluZSAgIFBMQU5FX0NUTF9DTEVBUl9DT0xPUl9ESVNBQkxFCQko
MSA8PCAxMykgLyoNCj4gVEdMKyAqLw0KPiAgI2RlZmluZSAgIFBMQU5FX0NUTF9QTEFORV9HQU1N
QV9ESVNBQkxFCQkoMSA8PCAxMykgLyoNCj4gUHJlLUdMSyAqLw0KPiAgI2RlZmluZSAgIFBMQU5F
X0NUTF9USUxFRF9NQVNLCQkJKDB4NyA8PCAxMCkNCj4gICNkZWZpbmUgICBQTEFORV9DVExfVElM
RURfTElORUFSCQkoMCA8PCAxMCkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
