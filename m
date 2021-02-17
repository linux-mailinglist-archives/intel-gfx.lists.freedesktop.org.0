Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CC731DE16
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 18:25:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23DC86E7D0;
	Wed, 17 Feb 2021 17:25:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B9AA6E7D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 17:25:24 +0000 (UTC)
IronPort-SDR: rhqHbPXBhoXIwf7OUfGzWVfRSQNQdFqfd5XfIHRMrLC/IkOmuvQvINtsY1BHQf97gF6hjtXutS
 9UVy91I8CwbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="244724909"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="244724909"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:25:23 -0800
IronPort-SDR: mu7mrCGGgdNSTZsNchwz0Lp1pD+YE/dOKac7fPqGGe1+Jauq4M3h3fmo7Pie5GL5Ih4cXEK8U5
 xQIFdEIoysWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="362108249"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 17 Feb 2021 09:25:23 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 09:25:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 09:25:22 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Wed, 17 Feb 2021 09:25:22 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915/display/adl_s: Fix
 dpclka_cfgcr0_clk_off mapping
Thread-Index: AQHXAWvFzoGb7xSwY06yjubbSUNGp6pVa26AgAAGnYCAABozgIAHmzsA
Date: Wed, 17 Feb 2021 17:25:22 +0000
Message-ID: <717eed5be5ec9145f33c087f63bd71f01688821d.camel@intel.com>
References: <20210212182201.155043-1-jose.souza@intel.com>
 <YCbU65VC/YP4MRHf@intel.com>
 <53eacc4a83726b8db5d063d02479a085df7542ae.camel@intel.com>
 <YCbwceGlRhcPJikB@intel.com>
In-Reply-To: <YCbwceGlRhcPJikB@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <E3642EFAE9429C49AA287B88D3C48143@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display/adl_s: Fix
 dpclka_cfgcr0_clk_off mapping
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTAyLTEyIGF0IDIzOjE3ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgRmViIDEyLCAyMDIxIGF0IDA3OjQyOjE3UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIEZyaSwgMjAyMS0wMi0xMiBhdCAyMToyMCArMDIwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gRnJpLCBGZWIgMTIsIDIwMjEgYXQgMTA6MjE6NTlBTSAt
MDgwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gVGhlIGNmZ2NyMC8x
X2Nsa19vZmYgbWFwcGluZyBpcyB3cm9uZyBmb3IgYWRsLXMgd2hhdCBjb3VsZCBjYXVzZQ0KPiA+
ID4gPiB0aGUgd3JvbmcgY2xvY2sgYmVpbmcgZGlzYWJsZWQgYW5kIGxlYXZpbmcgYSBub3QgbmVl
ZGVkIGNsb2NrDQo+ID4gPiA+IHJ1bm5pbmcgY29uc3VtaW5nIG1vcmUgcG93ZXIgdGhhbiBuZWVk
ZWQuDQo+ID4gPiA+IA0KPiA+ID4gPiBCc3BlYzogNTAyODcNCj4gPiA+ID4gQnNwZWM6IDUzODEy
DQo+ID4gPiA+IEJzcGVjOiA1MzcyMw0KPiA+ID4gPiBGaXhlczogZDZkMmJjOTk2ZTQ1ICgiZHJt
L2k5MTUvYWRsX3M6IENvbmZpZ3VyZSBQb3J0IGNsb2NrIHJlZ2lzdGVycyBmb3IgQURMLVMiKQ0K
PiA+ID4gPiBDYzogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+DQo+ID4g
PiA+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gPiA+
ID4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jIHwgIDQgKysrLQ0KPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgfCAxMiArKysrKysrKysrKysNCj4gPiA+ID4gwqAyIGZpbGVzIGNoYW5n
ZWQsIDE1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4gPiBpbmRleCAyZDY5
MDZmNjk5NWYuLjc2MzFlMDgwMzQ5ZCAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gPiA+IEBAIC0xNTg1LDcgKzE1ODUsOSBA
QCBoc3dfc2V0X3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+
ID4gwqBzdGF0aWMgdTMyIGljbF9kcGNsa2FfY2ZnY3IwX2Nsa19vZmYoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ID4gPiDCoAkJCQkgICAgIGVudW0gcGh5IHBoeSkNCj4g
PiA+ID4gwqB7DQo+ID4gPiA+IC0JaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKSB7DQo+ID4g
PiA+ICsJaWYgKElTX0FMREVSTEFLRV9TKGRldl9wcml2KSkgew0KPiA+ID4gPiArCQlyZXR1cm4g
QURMU19EUENMS0FfQ0ZHQ1JfRERJX0NMS19PRkYocGh5KTsNCj4gPiA+ID4gKwl9IGVsc2UgaWYg
KElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKSB7DQo+ID4gPiA+IMKgCQlyZXR1cm4gUktMX0RQQ0xL
QV9DRkdDUjBfRERJX0NMS19PRkYocGh5KTsNCj4gPiA+ID4gwqAJfSBlbHNlIGlmIChpbnRlbF9w
aHlfaXNfY29tYm8oZGV2X3ByaXYsIHBoeSkpIHsNCj4gPiA+ID4gwqAJCXJldHVybiBJQ0xfRFBD
TEtBX0NGR0NSMF9ERElfQ0xLX09GRihwaHkpOw0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgNCj4gPiA+ID4gaW5kZXggMjI0YWQ4OTdhZjM0Li43YzY5YjUwY2NjNWMgMTAwNjQ0DQo+ID4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiA+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ID4gPiBAQCAtMTA0MTYsNiArMTA0
MTYsMTggQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7DQo+ID4gPiA+IMKgCQkJCQkJCUFETFNfRFBD
TEtBX0RESUpfU0VMX01BU0ssIFwNCj4gPiA+ID4gwqAJCQkJCQkJQURMU19EUENMS0FfRERJS19T
RUxfTUFTSykNCj4gPiA+ID4gwqANCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+
ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiArI2Rl
ZmluZSBfQURMU19EUENMS0FfRERJQV9DTEtfT0ZGCQkJUkVHX0JJVCgxMCkNCj4gPiA+ID4gKyNk
ZWZpbmUgX0FETFNfRFBDTEtBX0RESUJfQ0xLX09GRgkJCVJFR19CSVQoMTEpDQo+ID4gPiA+ICsj
ZGVmaW5lIF9BRExTX0RQQ0xLQV9ERElJX0NMS19PRkYJCQlSRUdfQklUKDI0KQ0KPiA+ID4gPiAr
I2RlZmluZSBfQURMU19EUENMS0FfRERJSl9DTEtfT0ZGCQkJUkVHX0JJVCg0KQ0KPiA+ID4gPiAr
I2RlZmluZSBfQURMU19EUENMS0FfRERJS19DTEtfT0ZGCQkJUkVHX0JJVCg1KQ0KPiA+ID4gDQo+
ID4gPiBTbyBzaG9zZSBhcmUgYXBwYXJlbnRseSBzcGxpdCBiZXR3ZWVuIHRoZSB0d28gcmVnaXN0
ZXJzLiBXaHkgYXJlbid0DQo+ID4gPiB3ZSBkZWZpbmluZyB0aGVzZSBzbyB0aGF0IGl0IHdvdWxk
IGJlIG9idmlvdXMgd2hpY2ggcmVnaXN0ZXIgdGhleQ0KPiA+ID4gbGl2ZSBpbj8gVGhpcyBzdHVm
ZiBpcyBjb25mdXNpbmcgZW5vdWdoIHdpdGggdGhlIGh3IGZvbGtzIGNodXJuaW5nDQo+ID4gPiB0
aGUgYml0cyBhcm91bmQgcmFuZG9tbHkgb24gZXZlcnkgcGxhdGZvcm0sIHNvIEkgZG9uJ3QgdGhp
bmsgd2UNCj4gPiA+IHNob3VsZCBhZGQgdG8gdGhlIGNvbmZ1c2lvbiBieSBvYmZ1c2NhdGluZyB0
aGUgYml0IGRlZmluZXMuIEkgZG8NCj4gPiA+IGxpa2UgdGhhdCB5b3UgbmFtZWQgdGhlIGJpdHMs
IHdoaWNoIGlzbid0IGNhc2UgZm9yIHRoZSBvdGhlcg0KPiA+ID4gcGxhdGZvcm1zLiBXb3VsZCBi
ZSBuaWNlIHRvIGZpeCBpdCBhbGwgdXAgYWN0dWFsbHkuDQo+ID4gPiANCj4gPiA+IEhtbS4gSG93
ZXZlciwgdGhpcyBuZXcgZGVmaW50aW9uIHNlZW0gdG8gbWF0Y2ggDQo+ID4gPiBJQ0xfRFBDTEtB
X0NGR0NSMF9ERElfQ0xLX09GRigpIDEwMCUuIFNvIGhvdyBjYW4gdGhpcyBiZSBmaXhpbmcNCj4g
PiA+IHNvbWV0aGluZz8gQWxzbyBJQ0wgZm9yIHN1cmUgY2FuJ3QgaGF2ZSB0aGF0IG1hbnkgY29t
Ym8gUEhZcyBjYW4NCj4gPiA+IGl0PyBXZSBzaG91bGQgbnVrZSB0aGUgZXh0cmEgc3R1ZmYgZnJv
bSB0aGUgSUNMIGRlZmludGlvbiBpZiBpdCdzDQo+ID4gPiBubyBsb25nZXIgdXNlZC4NCj4gPiAN
Cj4gPiBHb29kIGNhdGNoICYgbXkgYmFkLg0KPiA+IFdhcyBmaXhpbmcgaXQgZm9yIG90aGVyIHBs
YXRmb3JtIGFuZCB0b3VnaHQgdGhhdCBpdCBtaWdodCBiZSBicm9rZW4NCj4gPiBmb3IgQURMLVMg
dG9vIGJ1dCBhcyBhbGwgcG9ydHMgYXJlIGNvbWJvIHBvcnRzDQo+ID4gSUNMX0RQQ0xLQV9DRkdD
UjBfRERJX0NMS19PRkYgd2lsbCBkbyB0aGUgcmlnaHQgam9iLg0KPiA+IA0KPiA+IERyb3BwaW5n
IHRoaXMgcGF0Y2guDQo+IA0KPiBJIHdvdWxkbid0IG1pbmQgaGF2aW5nIHRoaXMgcGF0Y2gsIG9y
IHJhdGhlciBhIHBhdGNoIHRvIGNsZWFuIHVwL2NsYXJpZnkNCj4gYWxsIHRoZSBEUENMS0FfQ0ZH
Q1IgYml0cyBvbiBldmVyeSBwbGF0Zm9ybS4gQXMgaXQgc3RhbmRzIGNyb3NzIGNoZWNraW5nDQo+
IGFnYWluc3QgdGhlIHNwZWMgaXMgYSBiaXQgdGVkaW91cy4NCg0KT2theSwgd2lsbCB0cnkgdG8g
ZG8gc29tZXRoaW5nIGJldHRlciBhcm91bmQgaGVyZS4NCg0KPiANCj4gQnV0IGF0IGxlYXN0IHJp
Z2h0IG5vdyBJIGRvbid0IGhhdmUgdG8gcmViYXNlIG15IERESSBjbG9jayByb3V0aW5nDQo+IHNl
cmllcyBbMV0gOikgVGhhdCBvbmUgc3RpbGwgaGFzIGEgZmV3IHRyaXZpYWwgcGF0Y2hlcyBsb29r
aW5nIGZvciByZXZpZXcNCj4gYnR3ICp3aW5rKiAqbnVkZ2UqLg0KDQpMdWNhcyBhbHJlYWR5IGRp
ZCA9XQ0KTGV0IG1lIGtub3cgaWYgeW91IGhhdmUgYW55dGhpbmcgZWxzZSBwZW5kaW5nIHRoYXQg
aXMgbm90IGh1Z2UuDQoNCj4gDQo+IFsxXSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzg2NTQ0Lw0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
