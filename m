Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 331BFF98A7
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 19:30:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9AE6EBC7;
	Tue, 12 Nov 2019 18:30:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3146EBC7
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 18:30:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 10:30:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="198177357"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga008.jf.intel.com with ESMTP; 12 Nov 2019 10:30:23 -0800
Received: from fmsmsx163.amr.corp.intel.com (10.18.125.72) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 12 Nov 2019 10:30:23 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 fmsmsx163.amr.corp.intel.com ([169.254.6.99]) with mapi id 14.03.0439.000;
 Tue, 12 Nov 2019 10:30:23 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/5] drm/i915/psr: Add bits per pixel
 limitation
Thread-Index: AQHVlEPWtPhXQSGMCUOT0/k3vjtWF6eIV42AgAAUgoA=
Date: Tue, 12 Nov 2019 18:30:22 +0000
Message-ID: <f61fa8c2035fdf13b6c577bbffc7c3e943108e36.camel@intel.com>
References: <20191106014504.167656-1-jose.souza@intel.com>
 <20191112171657.GK21445@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191112171657.GK21445@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <DD2DC74E52A7E94D8D1417561A369D7A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/psr: Add bits per pixel
 limitation
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

T24gVHVlLCAyMDE5LTExLTEyIGF0IDA5OjE2IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUdWUsIE5vdiAwNSwgMjAxOSBhdCAwNTo0NTowMFBNIC0wODAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphDQo+IHdyb3RlOg0KPiA+IFBTUjIgSFcgb25seSBzdXBwb3J0IGEgbGltaXRlZCBudW1i
ZXIgb2YgYml0cyBwZXIgcGl4ZWwsIGlmIG1vZGUNCj4gPiBoYXMNCj4gPiBtb3JlIHRoYW4gc3Vw
cG9ydGVkIFBTUjIgc2hvdWxkIG5vdCBiZSBlbmFibGVkLg0KPiA+IA0KPiA+IEJTcGVjOiA1MDQy
Mg0KPiA+IEJTcGVjOiA3NzEzDQo+ID4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcu
bXVuQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDExICsrKysrKysrKystDQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCBjMWQxMzMzNjJi
NzYuLjBkODRlYTI4YmM2ZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IEBAIC02MDgsNyArNjA4LDcgQEAgc3RhdGljIGJvb2wgaW50ZWxf
cHNyMl9jb25maWdfdmFsaWQoc3RydWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7
DQo+ID4gIAlpbnQgY3J0Y19oZGlzcGxheSA9IGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUu
Y3J0Y19oZGlzcGxheTsNCj4gPiAgCWludCBjcnRjX3ZkaXNwbGF5ID0gY3J0Y19zdGF0ZS0+aHcu
YWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5Ow0KPiA+IC0JaW50IHBzcl9tYXhfaCA9IDAsIHBz
cl9tYXhfdiA9IDA7DQo+ID4gKwlpbnQgcHNyX21heF9oID0gMCwgcHNyX21heF92ID0gMCwgbWF4
X2JwcCA9IDA7DQo+ID4gIA0KPiA+ICAJaWYgKCFkZXZfcHJpdi0+cHNyLnNpbmtfcHNyMl9zdXBw
b3J0KQ0KPiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPiBAQCAtNjMyLDEyICs2MzIsMTUgQEAgc3Rh
dGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0DQo+ID4gaW50ZWxfZHAgKmlu
dGVsX2RwLA0KPiA+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsNCj4gPiAgCQlw
c3JfbWF4X2ggPSA1MTIwOw0KPiA+ICAJCXBzcl9tYXhfdiA9IDMyMDA7DQo+ID4gKwkJbWF4X2Jw
cCA9IDMwOw0KPiA+ICAJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8DQo+
ID4gSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsNCj4gPiAgCQlwc3JfbWF4X2ggPSA0MDk2Ow0K
PiA+ICAJCXBzcl9tYXhfdiA9IDIzMDQ7DQo+ID4gKwkJbWF4X2JwcCA9IDI0Ow0KPiA+ICAJfSBl
bHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDkpKSB7DQo+ID4gIAkJcHNyX21heF9oID0gMzY0MDsN
Cj4gPiAgCQlwc3JfbWF4X3YgPSAyMzA0Ow0KPiA+ICsJCW1heF9icHAgPSAyNDsNCj4gPiAgCX0N
Cj4gPiAgDQo+ID4gIAlpZiAoY3J0Y19oZGlzcGxheSA+IHBzcl9tYXhfaCB8fCBjcnRjX3ZkaXNw
bGF5ID4gcHNyX21heF92KSB7DQo+ID4gQEAgLTY0Nyw2ICs2NTAsMTIgQEAgc3RhdGljIGJvb2wg
aW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0K
PiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPiAgCX0NCj4gPiAgDQo+ID4gKwlpZiAoY3J0Y19zdGF0
ZS0+cGlwZV9icHAgPiBtYXhfYnBwKSB7DQo+ID4gKwkJRFJNX0RFQlVHX0tNUygiUFNSMiBub3Qg
ZW5hYmxlZCwgcGlwZSBicHAgJWQgPiBtYXgNCj4gPiBzdXBwb3J0ZWQgJWRcbiIsDQo+ID4gKwkJ
CSAgICAgIGNydGNfc3RhdGUtPnBpcGVfYnBwLCBtYXhfYnBwKTsNCj4gPiArCQlyZXR1cm4gZmFs
c2U7DQo+ID4gKwl9DQo+IA0KPiBUaGUgd29yZGluZyBvZiB0aGUgYnNwZWMgaXMgIlBTUjIgaXMg
bGltaXRlZCB0byAzMGJwcCAxMDoxMDoxMCIgYW5kDQo+ICJQU1IyIGlzIGxpbWl0ZWQgdG8gMjRi
cHAgODo4OjgiIC0tLSB0aGF0IHdvcmRpbmcgbWFrZXMgaXQgc291bmQgbGlrZQ0KPiB5b3UgbmVl
ZCB0byB1c2UgdGhhdCBvbmUgc3BlY2lmaWMgbW9kZSByYXRoZXIgdGhhbiBpdCBiZWluZyBhbiB1
cHBlcg0KPiBsaW1pdD8gIEkuZS4sIGRvIHdlIG5lZWQgYW4gPT0gdGVzdCBoZXJlIHJhdGhlciB0
aGFuID4/DQoNCkl0IHdvcmtzIHdpdGggbG93ZXIgdGhhbiB0aGUgbGltaXQ6DQoNCmh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczMTIvc2hhcmQtdGdsYjQv
aWd0QGttc19wc3IyX3N1QGZyb250YnVmZmVyLmh0bWwNCg0KaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzMwOS9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBw
c3IyX2Jhc2ljLmh0bWwNCg0KQnV0IEkgYWdyZWUgd2l0aCB5b3UsIEJTcGVjIHNob3VsZCBoYXZl
ICJsaW1pdGVkIHVwIHRvIFhicHAiLCBnb2luZyB0b29wZW4gYSBpc3N1ZS4gDQoNCj4gDQo+IA0K
PiBNYXR0DQo+IA0KPiA+ICsNCj4gPiAgCS8qDQo+ID4gIAkgKiBIVyBzZW5kcyBTVSBibG9ja3Mg
b2Ygc2l6ZSBmb3VyIHNjYW4gbGluZXMsIHdoaWNoIG1lYW5zIHRoZQ0KPiA+IHN0YXJ0aW5nDQo+
ID4gIAkgKiBYIGNvb3JkaW5hdGUgYW5kIFkgZ3JhbnVsYXJpdHkgcmVxdWlyZW1lbnRzIHdpbGwg
YWx3YXlzIGJlDQo+ID4gbWV0LiBXZQ0KPiA+IC0tIA0KPiA+IDIuMjQuMA0KPiA+IA0KPiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
