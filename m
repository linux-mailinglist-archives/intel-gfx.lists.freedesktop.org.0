Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5731D29A1FF
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 02:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 532406EAB0;
	Tue, 27 Oct 2020 01:04:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98BEA6EAB0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 01:04:23 +0000 (UTC)
IronPort-SDR: 88VtaJfFUCN9A4kbYYHBY0vqgqvYUZ3BQWc55HHT+R6qeysumoSWtrkOwf/kwO2mbkFQCT5mhH
 vQ/gaJaquryA==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="165419526"
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="165419526"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 18:04:23 -0700
IronPort-SDR: 4cv+Pmw41BG3SnPPQ3K6eptcch8JTKmYy96Xp0xtVm+mW/D8OUsBz0UmkvMC6aonRUqxR4lCD7
 cuNXl4Mw9J0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="322745637"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga006.jf.intel.com with ESMTP; 26 Oct 2020 18:04:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 27 Oct 2020 01:04:20 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 26 Oct 2020 18:04:19 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/6] drm/i915/display/psr: Use plane damage clips to
 calculate damaged area
Thread-Index: AQHWobRN4jSuhASKLEGmJvCD25Y0B6mq8yeAgAA444A=
Date: Tue, 27 Oct 2020 01:04:19 +0000
Message-ID: <3ea6bf28fecf1d164fafa88ffdb7ec9d6c9c9b7f.camel@intel.com>
References: <20201013230121.331595-1-jose.souza@intel.com>
 <20201013230121.331595-2-jose.souza@intel.com>
 <39fe2eb7bb30de6eed687592f70f6652ca12e24f.camel@intel.com>
In-Reply-To: <39fe2eb7bb30de6eed687592f70f6652ca12e24f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <5E4DB3C977E29448B60D79DF0E674509@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/display/psr: Use plane damage
 clips to calculate damaged area
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

T24gTW9uLCAyMDIwLTEwLTI2IGF0IDIxOjQwICswMDAwLCBNdW4sIEd3YW4tZ3llb25nIHdyb3Rl
Og0KPiBPbiBUdWUsIDIwMjAtMTAtMTMgYXQgMTY6MDEgLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUg
U291emEgd3JvdGU6DQo+ID4gTm93IHVzaW5nIHBsYW5lIGRhbWFnZSBjbGlwcyBwcm9wZXJ0eSB0
byBjYWxjdWFsdGUgdGhlIGRhbWFnZWQgYXJlYS4NCj4gPiBTZWxlY3RpdmUgZmV0Y2ggb25seSBz
dXBwb3J0cyBvbmUgcmVnaW9uIHRvIGJlIGZldGNoZWQgc28gc29mdHdhcmUNCj4gPiBuZWVkcyB0
byBjYWxjdWxhdGUgYSBib3VuZGluZyBib3ggYXJvdW5kIGFsbCBkYW1hZ2UgY2xpcHMuDQo+ID4g
DQo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+ID4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgfCA1NCArKysrKysrKysrKysrKysrKysrKystDQo+ID4gLS0NCj4gPiDCoDEgZmlsZSBj
aGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggNzczYTVi
NWZhMDc4Li4wZjFlOWYwZmE1N2YgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMTI3Myw2ICsxMjczLDkgQEAgaW50IGludGVsX3Bz
cjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiA+IMKgCWZvcl9lYWNoX29sZG5ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxh
bmUsDQo+ID4gb2xkX3BsYW5lX3N0YXRlLA0KPiA+IMKgCQkJCQkgICAgIG5ld19wbGFuZV9zdGF0
ZSwgaSkgew0KPiA+IMKgCQlzdHJ1Y3QgZHJtX3JlY3QgKnNlbF9mZXRjaF9hcmVhLCB0ZW1wOw0K
PiA+ICsJCXN0cnVjdCBkcm1fbW9kZV9yZWN0ICpkYW1hZ2VkX2NsaXBzOw0KPiA+ICsJCXUzMiBu
dW1fY2xpcHM7DQo+ID4gKwkJaW50IGo7DQo+ID4gwqANCj4gPiANCj4gPiANCj4gPiANCj4gPiDC
oAkJaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjICE9IGNydGNfc3RhdGUtDQo+ID4gPiB1
YXBpLmNydGMpDQo+ID4gwqAJCQljb250aW51ZTsNCj4gPiBAQCAtMTI5MSwxMyArMTI5NCw1NCBA
QCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ID4gwqAJCWlmICghbmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2li
bGUpDQo+ID4gwqAJCQljb250aW51ZTsNCj4gPiDCoA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+ICsJ
CXNlbF9mZXRjaF9hcmVhID0gJm5ld19wbGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0Y2hfYXJlYTsN
Cj4gPiArCQlzZWxfZmV0Y2hfYXJlYS0+eTEgPSAtMTsNCj4gPiArDQo+ID4gKwkJZGFtYWdlZF9j
bGlwcyA9DQo+ID4gZHJtX3BsYW5lX2dldF9kYW1hZ2VfY2xpcHMoJm5ld19wbGFuZV9zdGF0ZS0+
dWFwaSk7DQo+ID4gKwkJbnVtX2NsaXBzID0NCj4gPiBkcm1fcGxhbmVfZ2V0X2RhbWFnZV9jbGlw
c19jb3VudCgmbmV3X3BsYW5lX3N0YXRlLT51YXBpKTsNCj4gPiArDQo+ID4gwqAJCS8qDQo+ID4g
LQkJICogRm9yIG5vdyBkb2luZyBhIHNlbGVjdGl2ZSBmZXRjaCBpbiB0aGUgd2hvbGUgcGxhbmUN
Cj4gPiBhcmVhLA0KPiA+IC0JCSAqIG9wdGltaXphdGlvbnMgd2lsbCBjb21lIGluIHRoZSBmdXR1
cmUuDQo+ID4gKwkJICogSWYgcGxhbmUgbW92ZWQsIG1hcmsgdGhlIHdob2xlIHBsYW5lIGFyZWEg
YXMgZGFtYWdlZA0KPiA+IGFzIGl0DQo+ID4gKwkJICogbmVlZHMgdG8gYmUgY29tcGxldGUgcmVk
cmF3IGluIHRoZSBuZXcgcG9zaXRpb24uDQo+ID4gwqAJCSAqLw0KPiA+IC0JCXNlbF9mZXRjaF9h
cmVhID0gJm5ld19wbGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0Y2hfYXJlYTsNCj4gPiAtCQlzZWxf
ZmV0Y2hfYXJlYS0+eTEgPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkxID4+DQo+ID4gMTY7
DQo+ID4gLQkJc2VsX2ZldGNoX2FyZWEtPnkyID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLnNyYy55
MiA+Pg0KPiA+IDE2Ow0KPiA+ICsJCWlmICghZHJtX3JlY3RfZXF1YWxzKCZuZXdfcGxhbmVfc3Rh
dGUtPnVhcGkuZHN0LA0KPiA+ICsJCQkJICAgICAmb2xkX3BsYW5lX3N0YXRlLT51YXBpLmRzdCkp
IHsNCj4gPiArCQkJbnVtX2NsaXBzID0gMDsNCj4gPiArCQkJc2VsX2ZldGNoX2FyZWEtPnkxID0g
bmV3X3BsYW5lX3N0YXRlLQ0KPiA+ID4gdWFwaS5zcmMueTEgPj4gMTY7DQo+ID4gKwkJCXNlbF9m
ZXRjaF9hcmVhLT55MiA9IG5ld19wbGFuZV9zdGF0ZS0NCj4gPiA+IHVhcGkuc3JjLnkyID4+IDE2
Ow0KPiA+ICsJCX0gZWxzZSBpZiAoIW51bV9jbGlwcyAmJiBuZXdfcGxhbmVfc3RhdGUtPnVhcGku
ZmIgIT0NCj4gPiArCQkJICAgb2xkX3BsYW5lX3N0YXRlLT51YXBpLmZiKSB7DQo+ID4gKwkJCS8q
DQo+ID4gKwkJCSAqIElmIHRoZSBwbGFuZSBkb24ndCBoYXZlIGRhbWFnZSBhcmVhcyBidXQgdGhl
DQo+ID4gKwkJCSAqIGZyYW1lYnVmZmVyIGNoYW5nZWQsIG1hcmsgdGhlIHdob2xlIHBsYW5lDQo+
ID4gYXJlYSBhcw0KPiA+ICsJCQkgKiBkYW1hZ2VkLg0KPiA+ICsJCQkgKi8NCj4gPiArCQkJc2Vs
X2ZldGNoX2FyZWEtPnkxID0gbmV3X3BsYW5lX3N0YXRlLQ0KPiA+ID4gdWFwaS5zcmMueTEgPj4g
MTY7DQo+ID4gKwkJCXNlbF9mZXRjaF9hcmVhLT55MiA9IG5ld19wbGFuZV9zdGF0ZS0NCj4gPiA+
IHVhcGkuc3JjLnkyID4+IDE2Ow0KPiA+ICsJCX0NCj4gPiArDQo+IHdoeSBkb24ndCB5b3UgdXNl
IGRybV9hdG9taWNfaGVscGVyX2RhbWFnZV9tZXJnZWQoKSBmdW5jdGlvbiBoZXJlPw0KDQpodW0g
ZGlkIG5vdCBrbmV3IGFib3V0IHRoaXMgZnVuY3Rpb24sIHdpbGwgdGFrZSBhIGxvb2sgYXQgYXMg
aXQgZG9lcyBtb3JlIHRoYW4ganVzdCBtZXJnZSBhbGwgZGFtYWdlZCBhcmVhcy4NCg0KPiA+ICsJ
CWZvciAoaiA9IDA7IGogPCBudW1fY2xpcHM7IGorKykgew0KPiA+ICsJCQlzdHJ1Y3QgZHJtX3Jl
Y3QgZGFtYWdlX2FyZWE7DQo+ID4gKw0KPiA+ICsJCQlkYW1hZ2VfYXJlYS55MSA9IGRhbWFnZWRf
Y2xpcHNbal0ueTE7DQo+ID4gKwkJCWRhbWFnZV9hcmVhLnkyID0gZGFtYWdlZF9jbGlwc1tqXS55
MjsNCj4gPiArCQkJY2xpcF9hcmVhX3VwZGF0ZShzZWxfZmV0Y2hfYXJlYSwgJmRhbWFnZV9hcmVh
KTsNCj4gPiArCQl9DQo+ID4gKw0KPiA+ICsJCS8qDQo+ID4gKwkJICogTm8gcGFnZSBmbGlwLCBu
byBwbGFuZSBtb3ZpbWVudCBvciBubyBkYW1hZ2UgYXJlYXMsDQo+ID4gc28gZG9uJ3QNCj4gdHlw
byAobW92aW1lbnQgLT4gbW92ZW1lbnQpDQoNCmZpeGVkDQoNCj4gPiArCQkgKiBmZXRjaCBhbnkg
cGl4ZWwgZnJvbSBtZW1vcnkgZm9yIHRoaXMgcGxhbmUNCj4gPiArCQkgKi8NCj4gPiArCQlpZiAo
c2VsX2ZldGNoX2FyZWEtPnkxID09IC0xKSB7DQo+ID4gKwkJCXNlbF9mZXRjaF9hcmVhLT55MSA9
IDA7DQo+ID4gKwkJCXNlbF9mZXRjaF9hcmVhLT55MiA9IDA7DQo+ID4gKwkJfQ0KPiA+ICsNCj4g
PiArCQkvKiBEb24ndCBuZWVkIHRvIHJlZHJhdyBwbGFuZSBkYW1hZ2VkIGFyZWFzIG91dHNpZGUg
b2YNCj4gPiBzY3JlZW4gKi8NCj4gPiArCQlqID0gc2VsX2ZldGNoX2FyZWEtPnkyICsgKG5ld19w
bGFuZV9zdGF0ZS0+dWFwaS5kc3QueTENCj4gPiA+ID4gMTYpOw0KPiBzcmMgY29vcmRpbmF0ZXMg
b2YgdGhlIGRybV9wbGFuZV9zdGF0ZSBhcmUgMTYuMTYgZml4ZWQgcG9pbnQgYnV0IGRzdA0KPiBj
b29yZGluYXRlcyBhcmUgbm90IDE2LjE2IGZpeGVkIHBvaW50Lg0KPiB0aGVyZWZvcmUgd2UgZG9u
J3QgbmVlZCB0byBiaXQgc2hpZnQgZm9yIGRzdC4NCj4gQmVjYXVzZSB0aGUgc2VsX2ZldGNoX2Fy
ZWEgc2VlbXMgYmFzZWQgb24gc3JjIGNvb3JkaW5hdGVzLCBpbiBvcmRlciB0bw0KPiBhcHBseSB0
byBkc3QgY29vcmRpbmF0ZXMgaGVyZSwgIGl0IHJlcXVpcmVzIGNvb3JkaW5hdGUgY2FsY3VsYXRp
b24uIA0KDQp0aGFua3MgZm9yIGNhdGNoaW5nIHRoaXMsIGFsc28gZml4ZWQgdGhlIHNhbWUgaXNz
dWUgcGF0Y2ggMS4NCg0KPiA+ICsJCWogPSBjcnRjX3N0YXRlLT51YXBpLmFkanVzdGVkX21vZGUu
Y3J0Y192ZGlzcGxheSAtIGo7DQo+ID4gKwkJaWYgKGogPCAwKQ0KPiA+ICsJCQlzZWxfZmV0Y2hf
YXJlYS0+eTIgKz0gajsNCj4gPiDCoA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+
IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0K
PiA+IMKgCQl0ZW1wID0gKnNlbF9mZXRjaF9hcmVhOw0KPiA+IMKgCQl0ZW1wLnkxICs9IG5ld19w
bGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEgPj4gMTY7DQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
