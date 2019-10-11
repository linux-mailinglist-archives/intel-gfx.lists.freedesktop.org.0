Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D60D9D4395
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 17:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1F26EC4A;
	Fri, 11 Oct 2019 15:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB0DB6EC4A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 15:00:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 08:00:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="369440631"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 11 Oct 2019 08:00:14 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 FMSMSX105.amr.corp.intel.com ([169.254.4.49]) with mapi id 14.03.0439.000;
 Fri, 11 Oct 2019 08:00:13 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 1/4] drm/i915/display: Handle fused off display correctly
Thread-Index: AQHVf6GDYC8FVMXTa0WEbvbTS9ebeadV0+aAgAArVYA=
Date: Fri, 11 Oct 2019 15:00:12 +0000
Message-ID: <7b8810263a63c3e07e8da0c9bb4cf390f562d0a1.camel@intel.com>
References: <20191010193241.101401-1-jose.souza@intel.com>
 <20191011122503.GO1208@intel.com>
In-Reply-To: <20191011122503.GO1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.135.128]
Content-ID: <65295D6ECBAA76439189ED3043B9FD9C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Handle fused off
 display correctly
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTEwLTExIGF0IDE1OjI1ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgT2N0IDEwLCAyMDE5IGF0IDEyOjMyOjM4UE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gSWYgYWxsIHBpcGVzIGFyZSBmdXNlZCBvZmYgaXQg
bWVhbnMgdGhhdCBkaXNwbGF5IGlzIGRpc2FibGVkLA0KPiA+IHNpbWlsYXINCj4gPiBsaWtlIHdl
IGhhbmRsZSBmb3IgR0VOIDcgYW5kIDggcmlnaHQgYWJvdmUuDQo+ID4gDQo+ID4gT24gR0VOIDkg
dGhlIGJpdCAzMSBpcyAiSW50ZXJuYWwgR3JhcGhpY3MgRGlzYWJsZSIgYW5kIG9uIG5ld2VyDQo+
ID4gR0VOcw0KDQpIZXJlIHNob3VsZCBiZSBiaXQgMzAgaXMgIkludGVybmFsIERpc3BsYXkgRGlz
YWJsZSIuDQpJZiBiaXQgMzEgaXMgc2V0IEkgZ3Vlc3Mgbm90IGV2ZW4gR1QgaXMgYXZhaWxhYmxl
IGJ1dCB3aWxsIG5vdCBoYW5kbGUNCnRoaXMgaGVyZS4gDQoNCj4gPiBpdCBoYXMgYW5vdGhlciBm
dW5jdGlvbiwgcHJvYmFibHkgb24gR0VOIDkgd2hlbiBiaXQgMzEgaXMgc2V0IGFsbA0KPiA+IHRo
ZSAzIHBpcGVzIGRpc2FibGUgYml0IGFyZSBzZXQsIHNvIHdlIGNhbiB1bmlmeSB0aGUgaGFuZGxp
bmcuDQo+IA0KPiBJJ20gbm90IHN1cmUgdGhpcyBpcyByZWFsbHkgY29ycmVjdC4gVGhlIGRlc2Ny
aXB0aW9uIHNheXMgdGhlIHBpcGUNCj4gd2lsbA0KPiBqdXN0IG91dHB1dCBhIHNvbGlkIGNvbG9y
LCBzbyB0aGUgZGlzcGxheSBoYXJkd2FyZSBtYXkgYmUgdGhlcmUgdG8NCj4gc29tZQ0KPiBkZWdy
ZWUgYW5kIGlmIHdlIGRvbid0IHdhbnQgdG8gd2FzdGUgcG93ZXIgd2UgbWF5IGhhdmUgdG8gcG93
ZXINCj4gbWFuYWdlDQo+IHNvbWUgb2YgaXQgc3RpbGwuDQo+IA0KPiBOb3Qgc3VyZSBob3cgaGln
aCB1cCB3ZSd2ZSBwbHVnZ2VkIGluIHRoZSAncGlwZV9tYXNrPT0wIC0+IGRpc3BsYXkNCj4gbm90
DQo+IHRoZXJlJyBsb2dpYy4gSWYgaXQncyB0b28gaGlnaCB1cCB3ZSBtYXkgbGVhdmUgc29tZSBw
b3dlciBvbiB0aGUNCj4gZmxvb3IuDQo+IA0KPiBCdXQgYWxsIHRoYXQgaXMganVzdCBzcGVjdWxh
dGlvbiBvbiBteSBwYXJ0LiBXb3VsZCBwcm9iYWJseSBiZSBnb29kDQo+IHRvIGdldCBzb21lIGNs
YXJpZmljYXRpb24gdG8gdGhlIHNwZWMgYWJvdXQgdGhpcyBzdHVmZi4NCg0KU28gd291bGQgYmUg
YmV0dGVyIHNldCBpOTE1X21vZHBhcmFtcy5kaXNhYmxlX2Rpc3BsYXkgPSAxLCBzbyBpbiBmdXR1
cmUNCndlIGNhbiBwb3dlciBvZmYuDQoNCj4gDQo+ID4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMTEgKysrKystLS0tLS0NCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYw0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYw0KPiA+IGluZGV4IDg1
ZTQ4MGJkYzY3My4uYzAxZmNjZmUzY2NhIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5jDQo+ID4gQEAgLTk3MiwxNSArOTcyLDE0IEBAIHZvaWQgaW50
ZWxfZGV2aWNlX2luZm9fcnVudGltZV9pbml0KHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQ0KPiA+ICAJCQllbmFibGVkX21hc2sgJj0gfkJJVChQSVBFX0QpOw0KPiA+ICAN
Cj4gPiAgCQkvKg0KPiA+IC0JCSAqIEF0IGxlYXN0IG9uZSBwaXBlIHNob3VsZCBiZSBlbmFibGVk
IGFuZCBpZiB0aGVyZSBhcmUNCj4gPiAtCQkgKiBkaXNhYmxlZCBwaXBlcywgdGhleSBzaG91bGQg
YmUgdGhlIGxhc3Qgb25lcywgd2l0aA0KPiA+IG5vIGhvbGVzDQo+ID4gLQkJICogaW4gdGhlIG1h
c2suDQo+ID4gKwkJICogSWYgdGhlcmUgYXJlIGRpc2FibGVkIHBpcGVzLCB0aGV5IHNob3VsZCBi
ZSB0aGUgbGFzdA0KPiA+IG9uZXMsDQo+ID4gKwkJICogd2l0aCBubyBob2xlcyBpbiB0aGUgbWFz
ay4NCj4gPiAgCQkgKi8NCj4gPiAtCQlpZiAoZW5hYmxlZF9tYXNrID09IDAgfHwgIWlzX3Bvd2Vy
X29mXzIoZW5hYmxlZF9tYXNrICsNCj4gPiAxKSkNCj4gPiArCQlpZiAoZW5hYmxlZF9tYXNrICYm
ICFpc19wb3dlcl9vZl8yKGVuYWJsZWRfbWFzayArIDEpKQ0KPiA+ICAJCQlEUk1fRVJST1IoImlu
dmFsaWQgcGlwZSBmdXNlIGNvbmZpZ3VyYXRpb246DQo+ID4gZW5hYmxlZF9tYXNrPTB4JXhcbiIs
DQo+ID4gIAkJCQkgIGVuYWJsZWRfbWFzayk7DQo+ID4gLQkJZWxzZQ0KPiA+IC0JCQlpbmZvLT5w
aXBlX21hc2sgPSBlbmFibGVkX21hc2s7DQo+ID4gKw0KPiA+ICsJCWluZm8tPnBpcGVfbWFzayA9
IGVuYWJsZWRfbWFzazsNCj4gPiAgCX0NCj4gPiAgDQo+ID4gIAkvKiBJbml0aWFsaXplIHNsaWNl
L3N1YnNsaWNlL0VVIGluZm8gKi8NCj4gPiAtLSANCj4gPiAyLjIzLjANCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
